package com.datafire.building3.Building3A
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	
	public class Building3A extends FS3A_border
	{
		private var _highest:MovieClip;
		private var _lowest:uint = 1;
		
		public function Building3A()
		{
			super();
			this.stop();
			for(var i:int = 0; i < this.numChildren; i++){
				this.stop();
				if(this.getChildAt(i) is MovieClip){
					var r:MovieClip = MovieClip(this.getChildAt(i));
					r.stop();
					r.buttonMode = true;
					r.mouseChildren = false;
					r.addEventListener(MouseEvent.MOUSE_OVER, onOver);
					r.addEventListener(MouseEvent.MOUSE_OUT, onOut);
					_highest = r;
				}
			}
		}
		
		private function onOver(event:MouseEvent):void
		{
			var mc:MovieClip = MovieClip(event.currentTarget);
			
			mc.scaleX = mc.scaleY = 1.2;
			
			this.swapChildren(mc,_highest);
			//event.currentTarget.setChildIndex(event.currentTarget, 0);
			
//			var myColor:ColorTransform = event.currentTarget.transform.colorTransform;
//			myColor.color = 0x000000;
//			event.currentTarget.transform.colorTransform = myColor;
			
			mc.gotoAndStop(2);
		}
		
		private function onOut(event:MouseEvent):void
		{
			var mc:MovieClip = MovieClip(event.currentTarget);
			
			mc.scaleX = mc.scaleY = 1;
			
//			var myColor:ColorTransform = event.currentTarget.transform.colorTransform;
//			myColor.color = 0xffffff;
//			event.currentTarget.transform.colorTransform = myColor;
			
			mc.gotoAndStop(1);
		}
	}
}