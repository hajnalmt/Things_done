///<reference path='Duration.ts'/>
///<reference path='WorkingDay.ts'/>
var Model;
(function (Model) {
    var WorkingCalendar;
    (function (WorkingCalendar_1) {
        var WorkingDay = Model.WorkingCalendar.WorkingDay;
        var WorkingCalendar = (function () {
            function WorkingCalendar() {
                this.workingDays = [, true, true, true, true, true, false, false];
                this.normalWorkingDay = new WorkingDay();
            }
            WorkingCalendar.getWorkingCalendar = function () {
                if (WorkingCalendar._instance == null) {
                    WorkingCalendar._instance = new WorkingCalendar();
                }
                return WorkingCalendar._instance;
            };
            WorkingCalendar.prototype.add = function (date, duration) {
                var result = new Date(date.getTime());
                this.addMinutes(result, duration.getCost());
                return result;
            };
            WorkingCalendar.prototype.subTract = function (date, duration) {
                var result = new Date(date.getTime());
                this.addMinutes(result, duration.getCost(), true);
                return result;
            };
            WorkingCalendar.prototype.addMinutes = function (date, remainingMinutes, backward) {
                if (backward === void 0) { backward = false; }
                while (remainingMinutes != 0) {
                    var workingDay = this.getActualWorkingDay(date, backward);
                    remainingMinutes = backward
                        ? workingDay.subtract(date, remainingMinutes)
                        : workingDay.add(date, remainingMinutes);
                    if (remainingMinutes != 0) {
                        this.setToNextDay(date, backward);
                    }
                }
            };
            WorkingCalendar.prototype.setToWorkingPeriod = function (date, backward) {
                if (backward === void 0) { backward = false; }
                if (this.getActualWorkingDay(date, backward).isEnd(date, backward)) {
                    this.setToNextDay(date, backward);
                }
                this.getActualWorkingDay(date, backward).setTimeToPeriod(date, backward);
            };
            WorkingCalendar.prototype.isWorkingDay = function (date) {
                return this.workingDays[date.getDay()];
            };
            WorkingCalendar.prototype.getActualWorkingDay = function (date, backward) {
                if (backward === void 0) { backward = false; }
                while (!this.workingDays[date.getDay()]) {
                    this.setToNextDay(date, backward);
                }
                return this.normalWorkingDay;
            };
            WorkingCalendar.prototype.setToNextDay = function (date, backward) {
                if (backward === void 0) { backward = false; }
                if (backward) {
                    date.setDate(date.getDate() - 1);
                    date.setHours(23, 59, 0, 0);
                }
                else {
                    date.setDate(date.getDate() + 1);
                    date.setHours(0, 0, 0, 0);
                }
            };
            WorkingCalendar._instance = null;
            return WorkingCalendar;
        }());
        WorkingCalendar_1.WorkingCalendar = WorkingCalendar;
    })(WorkingCalendar = Model.WorkingCalendar || (Model.WorkingCalendar = {}));
})(Model || (Model = {}));
