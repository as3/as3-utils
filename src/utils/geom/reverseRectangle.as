package utils.geom {
	import flash.geom.Rectangle;


	// TODO: What's the point of this? Does this even work? Can a rect have a negative width or height?
	// TODO: Author?

	/**
	 * Reverse a rectangle.
	 * 
	 * @param value Source rectangle
	 * @return Reversed rectangle
	 */
	public function reverseRectangle(value:Rectangle):Rectangle {
		return new Rectangle(value.left, value.top, -value.width, -value.height);
	}
}
