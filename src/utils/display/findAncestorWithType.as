package utils.display
{
	import flash.display.DisplayObject;

	/**
	 *   Search the ancestry for a specific parent object.
	 *   @param child The display object whose parents to check.
	 *   @param type The type to check for. Should be a class or interface.
	 *   @return The ancestor or null.
	 *   @author Mims H. Wright
	 */
	public function findAncestorWithType(child:DisplayObject, type:*):*
	{
		if (child.parent == null) { return null; }
		if (child.parent is type) { return child.parent; }
		return findAncestorWithType(child.parent, type);
	}
}