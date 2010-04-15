package utils.align
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	   Aligns a DisplayObject to the horizontal center of the bounding Rectangle.

	   @param displayObject: The DisplayObject to align.
	   @param bounds: The area in which to align the DisplayObject.
	   @param snapToPixel: Force the position to whole pixels <code>true</code>, or to let the DisplayObject be positioned on sub-pixels <code>false</code>.
	 */
	public function alignToRectangleCenter(displayObject:DisplayObject, bounds:Rectangle, snapToPixel:Boolean = true):void
	{
		var centerX:Number = bounds.width * 0.5 - displayObject.width * 0.5 + bounds.x;
		displayObject.x = snapToPixel ? Math.round(centerX) : centerX;
	}
}