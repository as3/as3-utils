package utils.align
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	   Aligns a DisplayObject to the horizontal center and vertical middle of the bounding Rectangle.

	   @param displayObject: The DisplayObject to align.
	   @param bounds: The area in which to align the DisplayObject.
	   @param snapToPixel: Force the position to whole pixels <code>true</code>, or to let the DisplayObject be positioned on sub-pixels <code>false</code>.
	 */
	public function alignToRectangleCenterMiddle(displayObject:DisplayObject, bounds:Rectangle, snapToPixel:Boolean = true):void
	{
		alignToRectangleCenter(displayObject, bounds, snapToPixel);
		alignToRectangleMiddle(displayObject, bounds, snapToPixel);
	}
}