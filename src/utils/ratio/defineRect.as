package utils.ratio {
	import flash.geom.Rectangle;



	public function defineRect(size:Rectangle, width:Number, height:Number, snapToPixel:Boolean):Rectangle {
		var scaled:Rectangle = size.clone();

		scaled.width = snapToPixel ? int(width) : width;
		scaled.height = snapToPixel ? int(height) : height;

		return scaled;
	}
}
