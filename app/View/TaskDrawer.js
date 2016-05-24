///<reference path='../../lib/konva.d.ts'/>
///<reference path='../Model/Task.ts'/>
///<reference path='../../lib/jquery.d.ts'/>
///<reference path='Utils.ts'/>
///<reference path='ProjectDrawer.ts'/>
var View;
(function (View) {
    var Utils = View.Utils;
    var TaskDrawer = (function () {
        function TaskDrawer() {
        }
        TaskDrawer.prototype.draw = function (layer, timeLineLayer) {
            if (TaskDrawer.taskNameSample == null || TaskDrawer.taskTimeLineSample == null)
                this.createSamples();
            var node = TaskDrawer.taskNameSample.clone({});
            var taskName = node.find('.TaskName')[0];
            taskName.name('TaskName' + this.task.id);
            taskName.setText(this.task.name);
            node.setPosition(TaskDrawer.actualPosition);
            layer.add(node);
            var line = TaskDrawer.taskTimeLineSample.clone({});
            var taskLine = line.find('.TaskLine')[0];
            taskLine.setPoints([
                0, 0,
                Utils.getCanvasWidth(), 0
            ]);
            line.setPosition({ x: 0, y: TaskDrawer.actualPosition.y });
            timeLineLayer.add(line);
            TaskDrawer.actualPosition.y += Utils.taskLineHeight;
        };
        TaskDrawer.prototype.createSamples = function () {
            this.createTaskNameSample();
            this.createTaskTimeLineSample();
        };
        TaskDrawer.prototype.createTaskNameSample = function () {
            TaskDrawer.taskNameSample = new Konva.Group({
                x: 0,
                y: 0
            });
            var taskName = new Konva.Text({
                name: 'TaskName',
                text: 'Sample task name',
                fontSize: Utils.taskLineHeight * 2 / 3,
                fontFamily: 'Calibri',
                fill: 'blue'
            });
            var line = new Konva.Line({
                name: 'TaskLine',
                stroke: 'grey',
                dash: [1, 1],
                x: 0,
                y: 0,
                points: [
                    0, 0,
                    Utils.getCanvasWidth(), 0
                ]
            });
            TaskDrawer.taskNameSample.add(line);
            TaskDrawer.taskNameSample.add(taskName);
        };
        TaskDrawer.prototype.createTaskTimeLineSample = function () {
            TaskDrawer.taskTimeLineSample = new Konva.Group({
                x: 0,
                y: 0
            });
            var line = new Konva.Line({
                name: 'TaskLine',
                stroke: 'grey',
                dash: [1, 1],
                x: 0,
                y: 0,
                points: [
                    0, 0,
                    Utils.getCanvasWidth(), 0
                ]
            });
            TaskDrawer.taskTimeLineSample.add(line);
        };
        TaskDrawer.prototype.dragged = function (evt) {
            var date = Utils.positionToDate(evt.target.getAbsolutePosition().x);
            this.task.earliestStartConstraint = new Date(date.getTime());
            View.ProjectDrawer.refresh();
        };
        return TaskDrawer;
    }());
    View.TaskDrawer = TaskDrawer;
})(View || (View = {}));
