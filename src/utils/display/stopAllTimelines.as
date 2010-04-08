package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;

	/**
	 * Stops all timelines of the specified display object and its children.
	 * @param    displayObject    The display object to loop through.
	 */
	public function stopAllTimelines(displayObject:DisplayObjectContainer):void
	{
		var numChildren:int = displayObject.numChildren;

		for (var i:int = 0; i < numChildren; i++)
		{
			var child:DisplayObject = displayObject.getChildAt(i);

			if (child is DisplayObjectContainer)
			{
				if (child is MovieClip)
				{
					MovieClip(child).stop();
				}

				stopAllTimelines(child as DisplayObjectContainer);
			}
		}
	}
}