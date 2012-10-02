package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;

	/**
	 * Removes a child from the parent without throwing errors if the child or parent is null
	 * or if the child isn't a child of the specified parent.
	 * 
	 * @param child The child DisplayObject to remove.
	 * @param parent The parent to remove the child from. If none is specified, the function
	 * 				 attempts to get the parent from the child's <code>parent</code> property.
	 * @return DisplayObject The child that was removed.
	 * 
	 * @author Mims Wright
	 */
	public function removeChild(child:DisplayObject, parent:DisplayObjectContainer = null):DisplayObject
	{
		if (child) {
			if (!parent) {
				if (!child.parent) { // if parent and child.parent are null
					return null;
				}
				parent = child.parent;
			}
			if (parent == child.parent) {
				parent.removeChild(child);
				return child;
			}
		}
		return null;
	}
}