package utils.ratio {
	import flash.geom.Rectangle;

	import utils.math.Percent;



	/**
	 * Resizes an area to fill the bounding area while preserving aspect ratio.
	 * @param rect Area's width and height expressed as a Rectangle - the Rectangle's x and y values are ignored
	 * @param bounds Area to fill - the Rectangle's x and y values are ignored
	 * @param snapToPixel true to force the scale to whole pixels, or false to allow sub-pixels
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function scaleToFill(rect:Rectangle, bounds:Rectangle, snapToPixel:Boolean = true):Rectangle {
		var scaled:Rectangle = scaleHeight(rect, bounds.width, snapToPixel);

		if(scaled.height < bounds.height) scaled = scaleWidth(rect, bounds.height, snapToPixel);

		return scaled;
	}
}
