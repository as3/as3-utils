package utils.ratio {
	import flash.geom.Rectangle;

	import utils.math.Percent;



	/**
	 * Scales the width of an area while preserving aspect ratio.
	 * @param rect Area's width and height expressed as a Rectangle - the Rectangle's x and y values are ignored
	 * @param height Height to scale to
	 * @param snapToPixel true to force the scale to whole pixels, or false to allow sub-pixels
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function scaleWidth(rect:Rectangle, height:Number, snapToPixel:Boolean = true):Rectangle {
		return defineRect(rect, height * widthToHeight(rect), height, snapToPixel);
	}
}
