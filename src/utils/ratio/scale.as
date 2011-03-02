package utils.ratio {
	import flash.geom.Rectangle;

	import utils.math.Percent;



	/**
	 * Scales an area's width and height while preserving aspect ratio.
	 * @param rect Area's width and height expressed as a Rectangle - the Rectangle's x and y values are ignored
	 * @param amount Amount you wish to scale by
	 * @param snapToPixel true to force the scale to whole pixels, or false to allow sub-pixels
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function scale(rect:Rectangle, amount:Percent, snapToPixel:Boolean = true):Rectangle {
		return defineRect(rect, rect.width * amount.decimalPercentage, rect.height * amount.decimalPercentage, snapToPixel);
	}
}
