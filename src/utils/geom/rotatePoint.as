package utils.geom
{
	import flash.geom.Point;

	import utils.conversion.degreesToRadians;

	/**
	   Rotates a Point around another Point by the specified angle.

	   @param point: The Point to rotate.
	   @param centerPoint: The Point to rotate this Point around.
	   @param angle: The angle (in degrees) to rotate this point.
	 */
	public function rotatePoint(point:Point, centerPoint:Point, angle:Number):void
	{
		var radians:Number = degreesToRadians(angle);
		var baseX:Number = point.x - centerPoint.x;
		var baseY:Number = point.y - centerPoint.y;

		point.x = (Math.cos(radians) * baseX) - (Math.sin(radians) * baseY) + centerPoint.x;
		point.y = (Math.sin(radians) * baseX) + (Math.cos(radians) * baseY) + centerPoint.y;
	}
}