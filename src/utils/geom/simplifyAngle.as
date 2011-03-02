package utils.geom {



	/**
	 * Simplifys the supplied angle to its simpliest representation.
	 * Example code:
	 *      <pre>
	 *          var simpAngle:Number = simplifyAngle(725); // returns 5
	 *          var simpAngle2:Number = simplifyAngle(-725); // returns -5
	 *      </pre>
	 * @param value Angle to simplify
	 * @return Supplied angle simplified
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function simplifyAngle(value:Number):Number {
		var _rotations:Number = Math.floor(value / 360);

		return (value >= 0) ? value - (360 * _rotations) : value + (360 * _rotations);
	}
}
