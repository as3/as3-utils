package utils.draw
{
	import flash.display.Graphics;

	/**
	   Draws a rounded rectangle. Act identically to <code>Graphics.drawRoundRect</code> but allows the specification of which corners are rounded.

	   @param graphics: The location where drawing should occur.
	   @param x: The horizontal position of the rectangle.
	   @param y: The vertical position of the rectangle.
	   @param width: The width of the rectangle.
	   @param height: The height of the rectangle.
	   @param ellipseWidth: The width in pixels of the ellipse used to draw the rounded corners.
	   @param ellipseHeight: The height in pixels of the ellipse used to draw the rounded corners.
	   @param topLeft: Specifies if the top left corner of the rectangle should be rounded <code>true</code>, or should be square <code>false</code>.
	   @param topRight:Specifies if the top right corner of the rectangle should be rounded <code>true</code>, or should be square <code>false</code>.
	   @param bottomRight: Specifies if the bottom right corner of the rectangle should be rounded <code>true</code>, or should be square <code>false</code>.
	   @param bottomLeft: Specifies if the bottom left corner of the rectangle should be rounded <code>true</code>, or should be square <code>false</code>.
	   @usage
	   <code>
	   this.graphics.beginFill(0xFF00FF);
	   DrawUtil.drawRoundRect(this.graphics, 10, 10, 200, 200, 50, 50, true, false, true, false);
	   this.graphics.endFill();
	   </code>
	 */
	public function drawRoundRect(graphics:Graphics, x:Number, y:Number, width:Number, height:Number, ellipseWidth:Number, ellipseHeight:Number, topLeft:Boolean = true, topRight:Boolean = true,
								  bottomRight:Boolean = true, bottomLeft:Boolean = true):void
	{
		const radiusWidth:Number = ellipseWidth * 0.5;
		const radiusHeight:Number = ellipseHeight * 0.5;

		if (topLeft)
			graphics.moveTo(x + radiusWidth, y);
		else
			graphics.moveTo(x, y);

		if (topRight)
		{
			graphics.lineTo(x + width - radiusWidth, y);
			graphics.curveTo(x + width, y, x + width, y + radiusHeight);
		}
		else
			graphics.lineTo(x + width, y);

		if (bottomRight)
		{
			graphics.lineTo(x + width, y + height - radiusHeight);
			graphics.curveTo(x + width, y + height, x + width - radiusWidth, y + height);
		}
		else
			graphics.lineTo(x + width, y + height);

		if (bottomLeft)
		{
			graphics.lineTo(x + radiusWidth, y + height);
			graphics.curveTo(x, y + height, x, y + height - radiusHeight);
		}
		else
			graphics.lineTo(x, y + height);

		if (topLeft)
		{
			graphics.lineTo(x, y + radiusHeight);
			graphics.curveTo(x, y, x + radiusWidth, y);
		}
		else
			graphics.lineTo(x, y);
	}
}