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
	 * @returns Boolean True if the child was removed from the parent. False if something prevented it.
	 * 
	 * @author Mims Wright
	 */
	public function removeChild(child:DisplayObject, parent:DisplayObjectContainer = null):Boolean
	{
		if (child) {
			if (!parent) {
				if (!child.parent) { // if parent and child.parent are null
					return false;
				}
				parent = child.parent;
			}
			if (parent == child.parent) {
				parent.removeChild(child);
				return true;
			}
		}
		return false;
	}
}