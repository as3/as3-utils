package utils.geom {
	import flash.geom.Point;
	import flash.geom.Rectangle;

	//TODO: Author?
	
	/**
	 * Calculates center Point of a Rectangle.
	 * 
	 * @param value Rectangle to determine center Point of
	 */
	public function getRectangleCenter(value:Rectangle):Point {
		return new Point(value.x + (value.width / 2), value.y + (value.height / 2));
	}
}
