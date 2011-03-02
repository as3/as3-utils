package utils.display {
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;



	/**
	 * Crop the BitmapData source and return a new BitmapData.
	 * @param source Source BitmapData
	 * @param dest Crop area as Rectangle
	 * @return Cropped source as BitmapData
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function cropBitmapData(source:BitmapData, dest:Rectangle):BitmapData {
		var o:BitmapData = new BitmapData(dest.width, dest.height);
		var point:Point = new Point(0, 0);

		o.copyPixels(source, dest, point);

		return o;
	}
}
