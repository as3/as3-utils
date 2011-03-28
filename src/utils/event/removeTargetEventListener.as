package utils.event
{
	import flash.display.DisplayObject;
	import flash.events.IEventDispatcher;

	public function removeTargetEventListener(target:IEventDispatcher, 
											  type:String, 
											  listener:Function, 
											  useCapture:Boolean = false):void
	{
		if(!target) return;
		
		target.removeEventListener(type, listener, useCapture);
	}
}