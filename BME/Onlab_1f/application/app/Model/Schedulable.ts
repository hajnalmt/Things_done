///<reference path='Task.ts'/>
///<reference path='Dependency.ts'/>
///<reference path='../Util/HashSet.ts'/>
///<reference path='WorkingCalendar/WorkingCalendar.ts'/>
///<reference path='WorkingCalendar/Duration.ts'/>

module Model {
	import WorkingCalendar = Model.WorkingCalendar.WorkingCalendar;
	import Duration = Model.WorkingCalendar.Duration;
	import Task = Model.Task;
	import Dependency = Model.Dependency;
	import HashSet = Util.HashSet;

	export class Schedulable extends Task {
		duration: Duration;
		earliestStart: Date;
		earliestFinish: Date;
		latestStart: Date;
		latestFinish: Date;

		getSubTasks(): HashSet<Schedulable> {
			var result = new HashSet<Schedulable>();
			result.put(this);
			return result;
		}

		calculateCriticalCost(projectStartDate: Date, predecessors: Dependency[] = null) {
			if(predecessors == null) {
				predecessors = this.getPredecessors();
			}

			var workingCalendar = WorkingCalendar.getWorkingCalendar();

			var start: Date = new Date(projectStartDate.getTime());
			var defaultStart: Date = new Date(projectStartDate.getTime());
			for(var i: number = 0; i < predecessors.length; i++) {
				var actualDate = new Date((<Schedulable>predecessors[i].task).earliestFinish.getTime())
				actualDate = workingCalendar.add(actualDate, predecessors[i].lag);
				if(actualDate.getTime() > start.getTime()) start.setTime(actualDate.getTime());
			}
			var earliestStartConstraint: Date = this.getEarliestStartConstraint();
			if(earliestStartConstraint != null && earliestStartConstraint.getTime() > start.getTime()) {
				start.setTime(earliestStartConstraint.getTime());
			}
			workingCalendar.setToWorkingPeriod(start);
			this.earliestStart = new Date(start.getTime());
			this.earliestFinish = workingCalendar.add(start, this.duration);
		}

		calculateLatest(projectEndDate: Date) {
			var successors = this.getSuccessors();

			var workingCalendar = WorkingCalendar.getWorkingCalendar();

			var finish: Date = new Date(projectEndDate.getTime());
			var defaultFinish: Date = new Date(projectEndDate.getTime());
			for(var i: number = 0; i < successors.length; i++) {
				var actualDate = new Date((<Schedulable>successors[i].task).latestStart.getTime());
				actualDate = workingCalendar.subTract(actualDate, successors[i].lag);
				if(actualDate.getTime() < finish.getTime()) finish.setTime(actualDate.getTime());
			}

			workingCalendar.setToWorkingPeriod(finish, true);
			this.latestFinish =  new Date(finish.getTime());
			this.latestStart = 	workingCalendar.subTract(finish, this.duration);


			var predecessors = this.getPredecessors();
			predecessors.sort(function(a: Dependency, b: Dependency): number {
				return (<Schedulable>b.task).earliestStart.getTime() - (<Schedulable>a.task).earliestStart.getTime();
			});

			predecessors.forEach(dependency => {
				(<Schedulable>dependency.task).calculateLatest(projectEndDate);
			});
		}
	}
}