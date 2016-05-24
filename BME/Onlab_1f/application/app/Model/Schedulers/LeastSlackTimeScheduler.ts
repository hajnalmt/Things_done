///<reference path='Scheduler.ts'/>
///<reference path='ResourceManager.ts'/>
///<reference path='../Schedulable.ts'/>
///<reference path='../WorkingCalendar/WorkingCalendar.ts'/>

module Model.Schedulers {
	import Scheduler = Model.Schedulers.Scheduler;
	import ResourceManager = Model.Schedulers.ResourceManager;
	import Schedulable = Model.Schedulable;
	import WorkingCalendar = Model.WorkingCalendar.WorkingCalendar;


	export class LeastSlackTimeScheduler implements Scheduler {

		private resourceManager: ResourceManager;

		constructor() {
			this.resourceManager = new ResourceManager();
		}

		public schedule(tasksParam: Schedulable[]) {
			var tasks = tasksParam.slice(0);

			tasks.sort((t, t2): number => {
				var slackTime1 = t.latestFinish.getTime() - t.earliestFinish.getTime();
				var slackTime2 = t2.latestFinish.getTime() - t2.earliestFinish.getTime();
				return slackTime1 - slackTime2;
			});

			var completed: Schedulable[] = [];
			while(tasks.length > 0) {
				var taskToSchedule: Schedulable = null;
				tasks.some(task => {
					var predecessors = task.getPredecessors();
					for(var i = 0; i < predecessors.length; i++) {
						var pred = predecessors[i];
						if(completed.indexOf(<Schedulable>pred.task) < 0) return false;
					}
					taskToSchedule = task;
					return true;
				});
				if(taskToSchedule != null) {
					this.allocateResources(taskToSchedule);
					completed.push(taskToSchedule);
					var index = tasks.indexOf(taskToSchedule);
					if(index > -1) tasks.splice(index, 1);
				}
			}


		}

		private allocateResources(task: Schedulable) {
			var workingCalendar = WorkingCalendar.getWorkingCalendar();

			var predecessors: Dependency[] = task.getPredecessors();
			var start: Date = new Date(task.earliestStart.getTime());
			var defaultStart: Date = new Date(start.getTime());
			for(var i: number = 0; i < predecessors.length; i++) {
				var actualDate = new Date(predecessors[i].task.finish.getTime());
				actualDate = workingCalendar.add(actualDate, predecessors[i].lag);
				if(actualDate.getTime() > start.getTime()) start.setTime(actualDate.getTime());
			}
			var finish = workingCalendar.add(start, task.duration);

			var allocationSucces = false;
			console.log(task.name);
			while(!allocationSucces) {
				allocationSucces = true;
				var resources = task.getResourceUsages();
				var that = this;
				resources.forEach(resource => {
					for(var i: number = 0; i < resource.need; i++) {
						var newStart = that.resourceManager.allocateResource(resource.resource, start, finish);
						if(newStart != null) {
							allocationSucces = false;
							start.setTime(newStart.getTime());
							finish = workingCalendar.add(newStart, task.duration);
							return;
						}
					}
				});
			}
			task.finish = new Date(finish.getTime());
			task.start = new Date(start.getTime());

			if(task.parent != null) {
				task.parent.notifyScheduled(task);
			}
		}
	}

}