package utils.align
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	   Aligns a DisplayObject to the right side of the bounding Rectangle.

	   @param displayObject: The DisplayObject to align.
	   @param bounds: The area in which to align the DisplayObject.
	   @param snapToPixel: Force the position to whole pixels <code>true</code>, or to let the DisplayObject be positioned on sub-pixels <code>false</code>.
	   @param outside: Align the DisplayObject to the outside of the bounds <code>true</code>, or the inside <code>false</code>.
	 */
	public function alignToRectangleRight(displayObject:DisplayObject, bounds:Rectangle, snapToPixel:Boolean = true, outside:Boolean = false):void
	{
		var x:Number = outside ? bounds.right : bounds.right - displayObject.width;
		displayObject.x = snapToPixel ? Math.round(x) : x;
	}
}