package utils.geom {



	/**
	 * Simplifies the supplied angle to its simplest representation.
	 * Example code:
	 *      <pre>
	 *          var simpAngle:Number = simplifyAngle(725); // returns 5
	 *          var simpAngle2:Number = simplifyAngle(-725); // returns -5
	 *      </pre>
	 * @param angle Angle to simplify in degrees
	 * @return Supplied angle simplified
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function simplifyAngle(angle:Number):Number {
		var _rotations:Number = Math.floor(angle / 360);

		return (angle >= 0) ? angle - (360 * _rotations) : angle + (360 * _rotations);
	}
}
