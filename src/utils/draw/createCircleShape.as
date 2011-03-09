package utils.draw
{
	import flash.display.Graphics;
	import flash.display.Shape;

	/**
	 *   Create a shape that is a simple solid color-filled circle
	 * 
	 *   @param r Radius of the circle.
	 *   @param color Color of the circle. Default is black.
	 *   @param alpha Alpha of the circle. Default is full opacity.
	 *   @param x Initial x position
	 *   @param y Initial y position
	 *   @return The created shape
	 * 
	 *   @author Mims Wright
	 */
	public function createCircleShape (r:Number, color:uint = 0, alpha:Number = 1, x:Number = 0, y:Number = 0):Shape
	{
		var circle:Shape = new Shape();
		var g:Graphics = circle.graphics;
		g.beginFill(color, alpha);
		g.drawCircle(0,0,r);
		g.endFill();
		
		circle.x = x;
		circle.y = y;
		
		return circle;
	}
}