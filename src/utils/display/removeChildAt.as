package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.filters.DisplacementMapFilter;

	/**
	 * Removes the child at the index specified in a container and returns it.
	 * Automatically handles cases that could potentially throw errors such as the index
	 * being out of bounds or the parent being null.
	 * 
	 * @param parent The container to remove the child from.
	 * @param index The index to remove. If left blank or if out of bounds, defaults to the top child.
	 * @return DisplayObject The child that was removed.
	 * 
	 * @author Mims Wright
	 */
	public function removeChildAt(parent:DisplayObjectContainer, index:int = -1):DisplayObject
	{
		if (parent && parent.numChildren > 0) {
			if (index < 0 || index > parent.numChildren) { index = parent.numChildren; }
			var child:DisplayObject = parent.removeChildAt(index);
		}
		return null;
	}
}