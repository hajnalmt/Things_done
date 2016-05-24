///<reference path='../Model/Schedulable.ts'/>
///<reference path='../Model/Summary.ts'/>
///<reference path='../Model/Task.ts'/>
///<reference path='../Model/Project.ts'/>
///<reference path='../Model/Dependency.ts'/>
///<reference path='../Model/WorkingCalendar/Duration.ts'/>
///<reference path='../Model/WorkingCalendar/WorkingCalendar.ts'/>
///<reference path='../Model/WorkingCalendar/WorkingHour.ts'/>
///<reference path='../Model/WorkingCalendar/WorkingDay.ts'/>
///<reference path='../Model/Resources/ResourceType.ts'/>
///<reference path='../Model/Resources/ResourceUsage.ts'/>
///<reference path='../Model/Schedulers/LeastSlackTimeScheduler.ts'/>>
var Util;
(function (Util) {
    var Project = Model.Project;
    var Dependency = Model.Dependency;
    var Summary = Model.Summary;
    var Schedulable = Model.Schedulable;

    var Duration = Model.WorkingCalendar.Duration;
    var WorkingCalendar = Model.WorkingCalendar.WorkingCalendar;
    var WorkingHour = Model.WorkingCalendar.WorkingHour;
    var WorkingDay = Model.WorkingCalendar.WorkingDay;
    var ResourceType = Model.Resources.ResourceType;
    var ResourceUsage = Model.Resources.ResourceUsage;

    var ProjectGenerator = (function () {
        function ProjectGenerator() {
        }
        ProjectGenerator.prototype.generateProject = function () {
            var idCtr = 0;
            var resourceType = new ResourceType();
            resourceType.id = idCtr++;
            resourceType.available = 2;
            resourceType.name = "Senior developer";

            var project = new Project();
            var task11 = new Schedulable();
            task11.name = 'Task1';
            task11.description = 'First task of phase 1';
            task11.duration = new Duration();
            task11.duration.day = 1;
            task11.duration.hour = 0;
            task11.duration.minute = 0;
            task11.id = idCtr++;
            var task12 = new Schedulable();
            task12.name = 'Task2';
            task12.description = 'Second task of phase 1';
            task12.duration = new Duration();
            task12.duration.day = 0;
            task12.duration.hour = 10;
            task12.duration.minute = 0;
            task12.id = idCtr++;
            var dep12 = new Dependency();
            dep12.id = idCtr++;
            dep12.task = task11;
            task12.predecessors.push(dep12);
            var dep12re = new Dependency();
            dep12re.id = idCtr++;
            dep12re.task = task12;
            task11.successors.push(dep12re);

            var phase1 = new Summary();
            phase1.name = 'Phase 1';
            phase1.description = 'Summary of phase 1';
            phase1.tasks.push(task11);
            phase1.tasks.push(task12);
            task11.parent = phase1;
            task12.parent = phase1;
            var res1 = new ResourceUsage();
            res1.id = idCtr++;
            res1.resource = resourceType;
            res1.need = 2;
            phase1.resourceUsages.push(res1);

            var task21 = new Schedulable();
            task21.name = 'Task3';
            task21.description = 'First task of phase 2';
            task21.duration = new Duration();
            task21.duration.day = 0;
            task21.duration.hour = 0;
            task21.duration.minute = 10;
            task21.id = idCtr++;
            var task22 = new Schedulable();
            task22.name = 'Task4';
            task22.description = 'Second task of phase 2';
            task22.duration = new Duration();
            task22.duration.day = 0;
            task22.duration.hour = 20;
            task22.duration.minute = 0;
            task22.id = idCtr++;
            var dep22Duration = new Duration();
            dep22Duration.day = 1;
            var dep22 = new Dependency();
            dep22.task = task21;
            dep22.id = idCtr++;
            dep22.lag = dep22Duration;
            task22.predecessors.push(dep22);
            var dep22re = new Dependency();
            dep22re.task = task22;
            dep22re.id = idCtr++;
            dep22re.lag = dep22Duration;
            task21.successors.push(dep22re);

            var phase2 = new Summary();
            phase2.name = 'Phase 2';
            phase2.description = 'Summary of phase 2';
            var dep2 = new Dependency();
            dep2.id = idCtr++;
            dep2.task = phase1;
            phase2.predecessors.push(dep2);
            var dep2re = new Dependency();
            dep2re.id = idCtr++;
            dep2re.task = phase2;
            phase1.successors.push(dep2re);
            var res2 = new ResourceUsage();
            res2.id = idCtr++;
            res2.resource = resourceType;
            res2.need = 1;
            phase2.resourceUsages.push(res2);

            phase2.tasks.push(task21);
            phase2.tasks.push(task22);
            phase2.id = idCtr++;
            task21.parent = phase2;
            task22.parent = phase2;

            var task3 = new Schedulable();
            task3.name = 'Task5';
            task3.description = 'Independent task';
            task3.duration = new Duration();
            task3.duration.day = 0;
            task3.duration.hour = 20;
            task3.duration.minute = 0;
            task3.id = idCtr++;
            var res3 = new ResourceUsage();
            res3.id = idCtr++;
            res3.resource = resourceType;
            res3.need = 1;
            task3.resourceUsages.push(res3);

            project.tasks = [];
            project.tasks.push(phase1);
            project.tasks.push(phase2);
            project.tasks.push(task3);

            project.start = new Date();
            project.start.setHours(0, 0, 0, 0);

            var workingCalendar = WorkingCalendar.getWorkingCalendar();
            var normalWorkingDay = new WorkingDay();
            normalWorkingDay.workingHours.push(new WorkingHour(8, 0, 12, 0));
            normalWorkingDay.workingHours.push(new WorkingHour(12, 30, 16, 30));
            workingCalendar.normalWorkingDay = normalWorkingDay;

            return project;
        };
        return ProjectGenerator;
    })();
    Util.ProjectGenerator = ProjectGenerator;
})(Util || (Util = {}));
//# sourceMappingURL=ProjectGenerator.js.map
