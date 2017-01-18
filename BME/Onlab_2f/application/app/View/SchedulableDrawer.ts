///<reference path='../Model/Schedulable.ts'/>
///<reference path='TaskDrawer.ts'/>
///<reference path='Utils.ts'/>

module View {

    import Schedulable = Model.Schedulable;
    import TaskDrawer = View.TaskDrawer;
    import Utils = View.Utils;

    export class SchedulableDrawer extends TaskDrawer {

        private static schedulableSample: Konva.Group;

        getTask(): Schedulable {
            return <Schedulable>this.task;
        }

        draw(layer: Konva.Layer, timeLineLayer: Konva.Layer) {

            if(SchedulableDrawer.schedulableSample == null)
                this.createSample();

            var node: Konva.Group = <Konva.Group>SchedulableDrawer.schedulableSample.clone({});
            node.setPosition({
                x: Utils.dateToPosition(this.getTask().start),
                y: TaskDrawer.actualPosition.y
            });


            var durationRect = <Konva.Rect>node.find('.durationRect')[0];
			durationRect.setWidth(Utils.dateToPosition(this.getTask().finish) - Utils.dateToPosition(this.getTask().start));
			if(this.getTask().earliestFinish.getTime() == this.getTask().latestFinish.getTime()) {
				durationRect.setStroke("red");
			}

			var that = this;
			durationRect.on("dragend", function(evt) {
				that.dragged(evt);
			});

            timeLineLayer.add(node);

            super.draw(layer, timeLineLayer);

        }

        createSample() {
            SchedulableDrawer.schedulableSample = new Konva.Group({
                x: 0,
                y: 0
            });

            var rect = new Konva.Rect({
                name: "durationRect",
                cornerRadius: 5,
                x: 0,
                y: 0,
                height: Utils.taskLineHeight,
                fill: '#ADFF85',
                stroke: 'black',
                strokeWidth: 2,
                draggable: true,
                dragBoundFunc: function(pos: Konva.Vector2d) {
                    var y: number = this.getAbsolutePosition().y;
                    return {
                        x: pos.x > 0 ? pos.x : 0,
                        y: y
                    };
                }
            });

            SchedulableDrawer.schedulableSample.add(rect);
        }


    }
}