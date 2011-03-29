package utils.event
{
	import flash.events.IEventDispatcher;

	public function addTargetEventListener(target:IEventDispatcher, 
										   type:String, 
										   listener:Function, 
										   useWeakReference:Boolean = false, 
										   useCapture:Boolean = false, 
										   priority:int = 0):void
	{
		if(!target) return;
		
		target.addEventListener(type, listener, useCapture, priority, useWeakReference);
	}
}