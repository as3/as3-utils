package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * interpolate the DisplayObject at weight t == (0 &lt;= t &lt;= 1). a position 1 would position the object to the
     * right-most bounds, and tx=0 would position to the left
	 *
	 * @param object DisplayObject to position
	 * @param tx weight of horizontal position from 0 to 1
	 * @param ty weight of verticle position from 0 to 1
	 * @param width width of horizontal constraint
	 * @param height height of the verticle constraint
	 * @offsetX the left offset of the horizontal constraint (default = 0)
	 * @offsetY the topmost offset of verticle constraint (default = 0)
	 */
	public function interpolate(object:DisplayObject, tx:Number, ty:Number, width:Number, height:Number, offsetX:int = 0, offsetY:int = 0):void
	{
		object.x = (width * tx) + offsetX - (tx * object.width);
		object.y = (height * ty) + offsetY - (ty * object.height);
	}
}