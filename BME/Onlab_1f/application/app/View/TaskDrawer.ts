///<reference path='../../lib/konva.d.ts'/>
///<reference path='../Model/Task.ts'/>
///<reference path='../../lib/jquery.d.ts'/>
///<reference path='Utils.ts'/>
///<reference path='ProjectDrawer.ts'/>

module View {
	import Task = Model.Task;
	import Utils = View.Utils;
	import PojectDrawer = View.ProjectDrawer;

	export class TaskDrawer {
		task: Task;
		private static taskNameSample: Konva.Group;
		private static taskTimeLineSample: Konva.Group;
		static actualPosition: Konva.Vector2d;

		draw(layer: Konva.Layer, timeLineLayer: Konva.Layer) {
			if(TaskDrawer.taskNameSample == null || TaskDrawer.taskTimeLineSample == null)
				this.createSamples();

			var node: Konva.Group = <Konva.Group>TaskDrawer.taskNameSample.clone({});

			var taskName = <Konva.Text>node.find('.TaskName')[0];
			taskName.name('TaskName' + this.task.id);
			taskName.setText(this.task.name);

			node.setPosition(TaskDrawer.actualPosition);
			layer.add(node);

			var line: Konva.Group = <Konva.Group>TaskDrawer.taskTimeLineSample.clone({});
			var taskLine = <Konva.Line>line.find('.TaskLine')[0];
			taskLine.setPoints([
				0, 0,
				Utils.getCanvasWidth(), 0
			]);
			line.setPosition({x: 0, y: TaskDrawer.actualPosition.y});

			timeLineLayer.add(line);

			TaskDrawer.actualPosition.y += Utils.taskLineHeight;

		}

		createSamples() {
			this.createTaskNameSample();
			this.createTaskTimeLineSample();
		}


		createTaskNameSample() {
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

		}

		createTaskTimeLineSample() {
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
		}

		dragged(evt: any) {
			var date: Date =  Utils.positionToDate(evt.target.getAbsolutePosition().x);
			this.task.earliestStartConstraint = new Date(date.getTime());
			ProjectDrawer.refresh();
		}
	}
}