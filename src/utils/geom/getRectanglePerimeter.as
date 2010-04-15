package utils.geom
{
	import flash.geom.Rectangle;

	/**
	   Calculates the perimeter of a rectangle.

	   @param rect: Rectangle to determine the perimeter of.
	 */
	public function getRectanglePerimeter(rect:Rectangle):Number
	{
		return rect.width * 2 + rect.height * 2;
	}
}