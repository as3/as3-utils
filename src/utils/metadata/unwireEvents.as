package utils.metadata
{
	import flash.events.IEventDispatcher;
	import flash.utils.Dictionary;
	
	import utils.event.getSafeEventHandler;
	import utils.event.removeTargetEventListener;
	import utils.event.trashSafeEventHandler;
	import utils.type.describeMethods;

	public function unwireEvents(target:IEventDispatcher):void
	{
		var methods:XMLList = describeMethods(target, 'Event');
		var type:String;
		var func:Function;
		var dict:Dictionary = new Dictionary(false);
		
		for each(var m:XML in methods)
		{
			type = m.arg.@value.toString();
			dict[func = target[m.name()]] = true;
			removeTargetEventListener(target, type, getSafeEventHandler(func));
		}
		
		for(var myFunc:* in dict)
			trashSafeEventHandler(myFunc);
		
		dict = null;
	}
}