package utils.align
{
	import flash.display.DisplayObject;

	/*
	 * interpolate the DisplayObject at weight t to the rectangle, ie, a weight of 1 would position the object to the right-most bounds
	 * @param DisplayObject DisplayObject to position
	 * @param width width of horizontal constraint
	 * @offsetX the left offset of the horizontal constraint (default = 0)
	 *
	 */
	public function interpolateX(object:DisplayObject, tx:Number, width:Number, offsetX:int = 0):void
	{
		object.x = (width * tx) + offsetX - (tx * object.width);
	}
}