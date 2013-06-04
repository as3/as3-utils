package utils.display
{
	import flash.display.DisplayObject;

	/**
	 *   Search the ancestry for a specific parent object.
	 *   @param child The display object whose parents to check.
	 *   @param ancestor The ancestor to check for.
	 *   @return The ancestor or null.
	 *   @author Mims H. Wright
	 */
	public function findAncestor(child:DisplayObject, ancestor:DisplayObject):DisplayObject
	{
		if (child == ancestor) { return ancestor; }
		if (child.parent == null) { return null; }
		if (child.parent == ancestor) { return ancestor; }
		return findAncestor(child.parent, ancestor);
	}
}