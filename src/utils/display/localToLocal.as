package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Point;

	/**
	 * Translate <code>DisplayObject</code> container position in a new container.
	 */
	public function localToLocal(from:DisplayObject, to:DisplayObject):Point
	{
		var point:Point = new Point();
		point = from.localToGlobal(point);
		point = to.globalToLocal(point);
		return point;
	}
}