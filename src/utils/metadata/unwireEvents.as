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
		var func:*;
		var dict:Dictionary = new Dictionary(false);
		
		for each(var m:XML in methods)
		{
			for each(var meta:XML in m.metadata.(@name=="Event"))
			{
				type = meta.arg.@value.toString();
				dict[func = target[m.name()]] = true;
				removeTargetEventListener(target, type, getSafeEventHandler(func));
			}
		}
		
		for(func in dict)
			trashSafeEventHandler(func);
	}
}