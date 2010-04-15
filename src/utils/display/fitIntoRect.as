package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;

	/**
	 * Fits a DisplayObject into a rectangular area with several options for scale
	 * and alignment. This method will return the Matrix required to duplicate the
	 * transformation and can optionally apply this matrix to the DisplayObject.
	 *
	 * @param displayObject
	 *
	 * The DisplayObject that needs to be fitted into the Rectangle.
	 *
	 * @param rectangle
	 *
	 * A Rectangle object representing the space which the DisplayObject should fit into.
	 *
	 * @param fillRect
	 *
	 * Whether the DisplayObject should fill the entire Rectangle or just fit within it.
	 * If true, the DisplayObject will be cropped if its aspect ratio differs to that of
	 * the target Rectangle.
	 *
	 * @param align
	 *
	 * The alignment of the DisplayObject within the target Rectangle. Use a constant from
	 * the DisplayUtils clazz.
	 *
	 * @param applyTransform
	 *
	 * Whether to apply the generated transformation matrix to the DisplayObject. By setting this
	 * to false you can leave the DisplayObject as it is but store the returned Matrix for to use
	 * either with a DisplayObject's transform property or with, for example, BitmapData.draw()
	 */

	public function fitIntoRect(displayObject:DisplayObject, rectangle:Rectangle, fillRect:Boolean = true, align:String = "C", applyTransform:Boolean = true):Matrix
	{
		var matrix:Matrix = new Matrix();

		var wD:Number = displayObject.width / displayObject.scaleX;
		var hD:Number = displayObject.height / displayObject.scaleY;

		var wR:Number = rectangle.width;
		var hR:Number = rectangle.height;

		var sX:Number = wR / wD;
		var sY:Number = hR / hD;

		var rD:Number = wD / hD;
		var rR:Number = wR / hR;

		var sH:Number = fillRect ? sY : sX;
		var sV:Number = fillRect ? sX : sY;

		var s:Number = rD >= rR ? sH : sV;
		var w:Number = wD * s;
		var h:Number = hD * s;

		var tX:Number = 0.0;
		var tY:Number = 0.0;

		switch (align)
		{
			case Alignment.LEFT:
			case Alignment.TOP_LEFT:
			case Alignment.BOTTOM_LEFT:
				tX = 0.0;
				break;

			case Alignment.RIGHT:
			case Alignment.TOP_RIGHT:
			case Alignment.BOTTOM_RIGHT:
				tX = w - wR;
				break;

			default:
				tX = 0.5 * (w - wR);
		}

		switch (align)
		{
			case Alignment.TOP:
			case Alignment.TOP_LEFT:
			case Alignment.TOP_RIGHT:
				tY = 0.0;
				break;

			case Alignment.BOTTOM:
			case Alignment.BOTTOM_LEFT:
			case Alignment.BOTTOM_RIGHT:
				tY = h - hR;
				break;

			default:
				tY = 0.5 * (h - hR);
		}

		matrix.scale(s, s);
		matrix.translate(rectangle.left - tX, rectangle.top - tY);

		if (applyTransform)
		{
			displayObject.transform.matrix = matrix;
		}

		return matrix;
	}
}