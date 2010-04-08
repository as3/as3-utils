package utils.draw
{
	import flash.display.Graphics;
	import flash.display.Shape;

	/**
	 *   Create a shape that is a simple solid color-filled rectangle
	 *   @param width Width of the rectangle
	 *   @param height Height of the rectangle
	 *   @param color Color of the rectangle
	 *   @param alpha Alpha of the rectangle
	 *   @return The created shape
	 *   @author Jackson Dunstan
	 */
	public function createRectangleShape(width:uint, height:uint, color:uint, alpha:Number):Shape
	{
		var rect:Shape = new Shape();

		var g:Graphics = rect.graphics;
		g.beginFill(color, alpha);
		g.drawRect(0, 0, width, height);
		g.endFill();

		return rect;
	}
}