package utils.display
{
	import flash.display.DisplayObject;

	/**
	 * Moves a display object to a given x and y position.
	 * x and y parameters are optional and if either is omitted, the current position will not change. 
	 * 
	 * @author Mims Wright
	 */
	public function moveTo(displayObject:DisplayObject, x:Number = NaN, y:Number = NaN):void
	{
		if (isNaN(x)) { x = displayObject.x; }
		if (isNaN(y)) { y = displayObject.y; }
		displayObject.x = x;
		displayObject.y = y;
	}
}