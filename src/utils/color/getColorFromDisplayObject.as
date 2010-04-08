package utils.color
{
	import flash.display.BitmapData;
	import flash.display.DisplayObject;

	import utils.number.clamp;

	/**
	 * Return the (A)RGB <i>hexadecimal</i> color value of a DisplayObject.
	 * @param src           of the display object.
	 * @param x             position to sample.
	 * @param y             position to sample.
	 * @param getAlpha      if true return is RGBA, else RGB.
	 */
	public function getColorFromDisplayObject(src:DisplayObject, x:uint = 0, y:uint = 0, getAlpha:Boolean = false):uint
	{
		const MAX_SIZE_SAFE:int = 2880;

		var w:Number = clamp(src.width, 1, MAX_SIZE_SAFE);
		var h:Number = clamp(src.height, 1, MAX_SIZE_SAFE);
		var bmp:BitmapData = new BitmapData(w, h);
		bmp.lock();
		bmp.draw(src);
		var color:uint = (!getAlpha) ? bmp.getPixel(int(x), int(y)) : bmp.getPixel32(int(x), int(y));
		bmp.unlock();
		bmp.dispose();
		return color;
	}
}