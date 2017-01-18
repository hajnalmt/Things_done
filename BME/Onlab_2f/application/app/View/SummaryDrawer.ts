///<reference path='../Model/Summary.ts'/>
///<reference path='TaskDrawer.ts'/>

module View {
    import Summary = Model.Summary;
    import TaskDrawer = View.TaskDrawer;
    export class SummaryDrawer extends TaskDrawer {
        private static summarySample: Konva.Group;

        subDrawers: TaskDrawer[];

        constructor() {
            super();
            this.subDrawers = [];
        }

        draw(layer: Konva.Layer, timeLineLayer: Konva.Layer) {
            if(SummaryDrawer.summarySample == null) this.createSummarySample();

            var node: Konva.Group = <Konva.Group>SummaryDrawer.summarySample.clone({});
            node.setPosition({
                x: Utils.dateToPosition(this.getTask().start),
                y: TaskDrawer.actualPosition.y
            });

            var durationRect = <Konva.Text>node.find('.durationRect')[0];
            durationRect.setWidth(Utils.dateToPosition(this.getTask().finish) - Utils.dateToPosition(this.getTask().start));
			var that = this;
			durationRect.on("dragend", function(evt) {
				that.dragged(evt);
			})

            timeLineLayer.add(node);

            super.draw(layer, timeLineLayer);

            var sumTask = this.getTask();
            TaskDrawer.actualPosition.x += Utils.taskLineHeight;
            for(var i: number = 0; i < this.subDrawers.length; i++) {
                this.subDrawers[i].draw(layer, timeLineLayer);
            }
            TaskDrawer.actualPosition.x -= Utils.taskLineHeight;

        }

        private createSummarySample() {
            SummaryDrawer.summarySample = new Konva.Group({x: 0, y: 0});

            var rect = new Konva.Rect({
                name: "durationRect",
                cornerRadius: 1,
                x: 0,
                y: Utils.taskLineHeight*0.33,
                height: Utils.taskLineHeight*0.33,
                fill: '#99C2FF',
                stroke: 'black',
                strokeWidth: 1,
                draggable: true,
                dragBoundFunc: function(pos: Konva.Vector2d) {
                    var y: number = this.getAbsolutePosition().y;
                    return {
                        x: pos.x > 0 ? pos.x : 0,
                        y: y
                    };
                }
            });

            SummaryDrawer.summarySample.add(rect);
        }


        getTask():Summary {
            return <Summary>this.task;
        }


    }
}