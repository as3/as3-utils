package utils.align
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	   Aligns a DisplayObject to the vertical middle of the bounding Rectangle.

	   @param displayObject: The DisplayObject to align.
	   @param bounds: The area in which to align the DisplayObject.
	   @param snapToPixel: Force the position to whole pixels <code>true</code>, or to let the DisplayObject be positioned on sub-pixels <code>false</code>.
	 */
	public function alignToRectangleMiddle(displayObject:DisplayObject, bounds:Rectangle, snapToPixel:Boolean = true):void
	{
		var centerY:Number = bounds.height * 0.5 - displayObject.height * 0.5 + bounds.y;
		displayObject.y = snapToPixel ? Math.round(centerY) : centerY;
	}
}