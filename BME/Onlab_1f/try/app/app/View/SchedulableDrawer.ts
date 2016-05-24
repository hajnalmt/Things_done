///<reference path='../Model/Schedulable.ts'/>
///<reference path='TaskDrawer.ts'/>
///<reference path='Utils.ts'/>

module View {

    import Schedulable = Model.Schedulable;
    import TaskDrawer = View.TaskDrawer;
    import Utils = View.Utils;

    export class SchedulableDrawer extends TaskDrawer {

        private static schedulableSample: Concrete.IGroup;

        getTask(): Schedulable {
            return <Schedulable>this.task;
        }

        draw(layer: Concrete.ILayer, timeLineLayer: Concrete.ILayer) {

            if(SchedulableDrawer.schedulableSample == null)
                this.createSample();

            var node: Concrete.IGroup = <Concrete.IGroup>SchedulableDrawer.schedulableSample.clone({});
            node.setPosition({
                x: Utils.dateToPosition(this.getTask().start),
                y: TaskDrawer.actualPosition.y
            });


            var durationRect = <Concrete.IRect>node.find('.durationRect')[0];
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
            SchedulableDrawer.schedulableSample = new Concrete.Group({
                x: 0,
                y: 0
            });

            var rect = new Concrete.Rect({
                name: "durationRect",
                cornerRadius: 5,
                x: 0,
                y: 0,
                height: Utils.taskLineHeight,
                fill: '#ADFF85',
                stroke: 'black',
                strokeWidth: 2,
                draggable: true,
                dragBoundFunc: function(pos: Concrete.Vector2d) {
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