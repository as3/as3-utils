package utils.geom
{
	import flash.geom.Point;

	/**
	   Determines the angle/degree between the first and second point.

	   @param first: The first Point.
	   @param second: The second Point.
	   @return The degree between the two points.
	 */
	public function angle(first:Point, second:Point):Number
	{
		return Math.atan2(second.y - first.y, second.x - first.x) / (Math.PI / 180);
	}
}