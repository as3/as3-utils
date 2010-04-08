package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Point;

	public function relativePos(dO1:DisplayObject, dO2:DisplayObject):Point
	{
		var pos:Point = new Point(0, 0);
		pos = dO1.localToGlobal(pos);
		pos = dO2.globalToLocal(pos);
		return pos;
	}
}