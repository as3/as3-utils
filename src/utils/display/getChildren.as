package utils.display
{
	import flash.display.DisplayObjectContainer;

	/**
	 *   Get the children of a container as an array
	 *   @param container Container to get the children of
	 *   @return The children of the given container as an array
	 *   @author Jackson Dunstan
	 */
	public function getChildren(container:DisplayObjectContainer):Array
	{
		var ret:Array = [];

		var numChildren:int = container.numChildren;
		for (var i:int = 0; i < numChildren; ++i)
		{
			ret.push(container.getChildAt(i));
		}

		return ret;
	}
}