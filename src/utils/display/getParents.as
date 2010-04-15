package utils.display
{
	import flash.display.DisplayObject;

	/**
	 *   Get the parents of a display object as an array
	 *   @param obj Object whose parents should be retrieved
	 *   @param includeSelf If obj should be included in the returned array
	 *   @param stopAt Display object to stop getting parents at. Passing
	 *                 null indicates that all parents should be included.
	 *   @return An array of the parents of the given display object. This
	 *           includes all parents unless stopAt is non-null. If stopAt is
	 *           non-null, it and its parents will not be included in the
	 *           returned array.
	 *   @author Jackson Dunstan
	 */
	public function getParents(obj:DisplayObject, includeSelf:Boolean = true, stopAt:DisplayObject = null):Array
	{
		var ret:Array = [];

		for (var cur:DisplayObject = includeSelf ? obj : obj.parent; cur != stopAt && cur != null; cur = cur.parent)
		{
			ret.push(cur);
		}

		return ret;
	}
}