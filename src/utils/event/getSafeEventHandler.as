package utils.event
{
	import flash.events.Event;

	public function getSafeEventHandler(func:Function):Function
	{
		safeEventHandlers[func] ||= function(event:Event):void {
			func.length ? func(event) : func();
		}
		
		return safeEventHandlers[func];
	}
}
