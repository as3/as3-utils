package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * interpolate the DisplayObject at weight t == (0 less or equal t less or equal 1).  a position 1 would position the object to the right-most bounds, and tx=0 would position to the left
	 *
	 * @param DisplayObject DisplayObject to position
	 * @param ty weight of verticle position from 0 to 1
	 * @param height height of the verticle constraint
	 * @offsetY the left offset of the horizontal constraint (default = 0)
	 */
	public function interpolateY(object:DisplayObject, ty:Number, height:Number, offsetY:int = 0):void
	{
		object.y = (height * ty) + offsetY - (ty * object.height);
	}
}