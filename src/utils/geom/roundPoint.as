package utils.geom {
	import flash.geom.Point;

	// todo: author?

	/**
	 * Returns a new point with x and y values rounded down to the nearest int.
	 * 
	 * @param value Source Point to be rounded.
	 * @return Point A new point with x and y rounded down to an int.
	 */
	public function roundPoint(point:Point):Point {
		return new Point(int(point.x), int(point.y));
	}
}
