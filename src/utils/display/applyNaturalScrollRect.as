package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	 *   Apply a scroll rect from (0,0) to (width,height)
	 *   @param dispObj Display object to apply on
	 *   @author Jackson Dunstan
	 */
	public function applyNaturalScrollRect(dispObj:DisplayObject):void
	{
		dispObj.scrollRect = new Rectangle(0, 0, dispObj.width, dispObj.height);
	}
}