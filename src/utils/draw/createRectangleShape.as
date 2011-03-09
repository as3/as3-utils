package utils.draw
{
	import flash.display.Graphics;
	import flash.display.Shape;

	/**
	 *   Create a shape that is a simple solid color-filled rectangle
	 * 
	 *   @param width Width of the rectangle
	 *   @param height Height of the rectangle
	 *   @param color Color of the rectangle. Default is black.
	 *   @param alpha Alpha of the rectangle. Default is full opacity.
	 *   @param x Initial x position
	 *   @param y Initial y position
	 *   @return The created shape
	 *   @author Jackson Dunstan, modified by Mims Wright
	 */
	public function createRectangleShape(width:uint, height:uint, color:uint = 0, alpha:Number = 1, x:Number = 0, y:Number = 0):Shape
	{
		var rect:Shape = new Shape();

		var g:Graphics = rect.graphics;
		g.beginFill(color, alpha);
		g.drawRect(0, 0, width, height);
		g.endFill();
		
		rect.x = x;
		rect.y = y;

		return rect;
	}
}