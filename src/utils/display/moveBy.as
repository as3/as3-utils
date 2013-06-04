package utils.display
{
	import flash.display.DisplayObject;

	/**
	 * Moves a display object by a given x and y position.
	 * x and y parameters are optional and if either is omitted, the current position will not change. 
	 * 
	 * @author Mims Wright
	 */
	public function moveBy(displayObject:DisplayObject, x:Number = NaN, y:Number = NaN):void
	{
		if (isNaN(x)) { x = 0; }
		if (isNaN(y)) { y = 0; }
		displayObject.x += x;
		displayObject.y += y;
	}
}