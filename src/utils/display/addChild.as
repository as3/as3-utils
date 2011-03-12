package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	

	/**
	 * Allows you to add a child without first checking that the child or parent exist.
	 * Allows you to add a child at an index higher than the number of children without error.
	 * Allows you to use the same function for addChild and addChildAt.
	 * 
	 * @param child The child DisplayObject to add.
	 * @param parent The container to add the child to.
	 * @param atIndex The index to add the child at. Default is to add to the top (-1)
	 * @return Boolean True if the child was added, false if something prevented it from being added.
	 * 
	 * @author Mims Wright 
	 */
	public function addChild(child:DisplayObject, parent:DisplayObjectContainer, atIndex:int = -1):Boolean
	{
		if (child && parent) {
			if (atIndex < 0 || atIndex > parent.numChildren) {
				atIndex = parent.numChildren;
			}
			parent.addChildAt(child, atIndex);
			return true;
		}
		return false
	}
}