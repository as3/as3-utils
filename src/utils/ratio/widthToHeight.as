package utils.ratio {
	import flash.geom.Rectangle;



	/**
	 * Determines the ratio of width to height.
	 * @param rect Area's width and height expressed as a Rectangle - the Rectangle's x and y values are ignored
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function widthToHeight(rect:Rectangle):Number {
		return rect.width / rect.height;
	}
}
