package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;
	
	/**
	 * Moves and resizes a display object to fit within a rectangle.
	 * 
	 * @author Mims Wright
	 */
	public function transformToFitRect(displayObject:DisplayObject, rectangle:Rectangle):void
	{
		displayObject.x = rectangle.x;
		displayObject.y = rectangle.y;
		displayObject.width = rectangle.width;
		displayObject.height = rectangle.height;
	}
}