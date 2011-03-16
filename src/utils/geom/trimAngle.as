package utils.geom {



	/**
	 * Trims the supplied angle to its 0..360 representation.
	 * Example code:
	 *      <pre>
	 *          var simpAngle:Number = trimAngle(725); // returns 5
	 *      </pre>
	 * @param value Angle to trim
	 * @return Supplied angle trimmed
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function trimAngle(value:Number):Number {
		var a:Number = value;

		while(a < 0) a += 360;
		while(a > 360) a -= 360;

		return a;
	}
}
