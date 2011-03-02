package utils.geom {
	import flash.geom.Point;



	/**
	 * Rounds x and y of a Point.
	 * @param value Source Point to be rounded
	 * @return Rounded Point
	 */
	public function roundPoint(value:Point):Point {
		return new Point(int(value.x), int(value.y));
	}
}
