package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;

	public function filterChildrenByProps(container:DisplayObjectContainer, props:Object):Array
	{
		var filteredChildren:Array = [];
		var child:DisplayObject;

		for (var i:int = 0, l:int = container.numChildren; i < l; i++)
		{
			child = container.getChildAt(i);
			var isOK:Boolean = true;
			for (var prop:String in props)
			{
				if (child[prop] != props[prop])
				{
					isOK = false;
					break;
				}
			}
			if (isOK)
				filteredChildren.push(child);
		}
		return filteredChildren;
	}
}