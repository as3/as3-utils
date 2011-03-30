package utils.syncro
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;

	internal dynamic class Phase extends Array
	{
		public function Phase(name:String, priority:int, ascending:Boolean)
		{
			_name = name;
			_priority = priority;
			_ascending = ascending;
			
			super();
		}
		
		private var _ascending:Boolean = true;
		
		private var _name:String = '';
		public function get name():String
		{
			return _name;
		}
		
		private var _priority:int = 0;
		public function get priority():int
		{
			return _priority;
		}
		
		public function render():void
		{
			if(_ascending)
				reverse();
			
			var obj:Object;
			
			// Protective clone so items added during 
			// validation don't cause an infinite loop.
			var protect:Array = concat();
			
			// Clear the list so items can be added during validation. 
			length = 0;
			var n:int = protect.length;
			
			while(--n >= 0)
			{
				obj = protect.pop();
				
				if(name in obj)
					obj[name]();
				else if(obj is IEventDispatcher)
					IEventDispatcher(obj).dispatchEvent(new Event(name));
			}
		}
	}
}