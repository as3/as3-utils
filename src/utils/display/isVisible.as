package utils.display
{
	import flash.display.DisplayObject;

	/**
	 *   Check if a display object is visible. This checks all of its
	 *   parents' visibilities.
	 *   @param obj Display object to check
	 *   @author Jackson Dunstan
	 */
	public function isVisible(obj:DisplayObject):Boolean
	{
		for (var cur:DisplayObject = obj; cur != null; cur = cur.parent)
		{
			if (!cur.visible)
			{
				return false;
			}
		}
		return true;
	}
}