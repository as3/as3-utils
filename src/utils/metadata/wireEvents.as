package utils.metadata
{
	import flash.events.IEventDispatcher;
	
	import utils.event.addTargetEventListener;
	import utils.event.getSafeEventHandler;
	import utils.type.describeMethods;

	public function wireEvents(target:IEventDispatcher):void
	{
		var methods:XMLList = describeMethods(target, 'Event');
		var type:String;
		for each(var m:XML in methods)
		{
			for each(var meta:XML in m.metadata.(@name=="Event"))
			{
				type = meta.arg.@value.toString();
				addTargetEventListener(target, type, getSafeEventHandler(target[m.@name]), false);
			}
		}
	}
}