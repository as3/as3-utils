package utils.draw
{
	import flash.display.Graphics;
	import flash.display.Shape;

	/**
	 *   Create a shape that is a simple solid color-filled ellipse
	 * 
	 *   @param w Width of the ellipse.
	 *   @param h Height of the ellipse.
	 *   @param color Color of the ellipse. Default is black.
	 *   @param alpha Alpha of the ellipse. Default is full opacity.
	 *   @param x Initial x position
	 *   @param y Initial y position
	 *   @return The created shape
	 * 
	 *   @author Mims Wright
	 */
	public function createEllipseShape(w:Number, h:Number = 0, color:uint = 0, alpha:Number = 1, x:Number = 0, y:Number = 0):Shape
	{
		if (h <= 0) {
			h = w;
		}
		
		var ellipse:Shape = new Shape();
		var g:Graphics = ellipse.graphics;
		g.beginFill(color, alpha);
		g.drawEllipse(0,0,w,h);
		g.endFill();
		
		ellipse.x = x;
		ellipse.y = y;
		
		return ellipse;
	}
}