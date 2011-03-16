package utils.geom {
	import flash.geom.Rectangle;



	/**
	 * Reverse a rectangle.
	 * @param value Source rectangle
	 * @return Reversed rectangle
	 */
	public function reverseRectangle(value:Rectangle):Rectangle {
		return new Rectangle(value.left, value.top, -value.width, -value.height);
	}
}
