package utils.display
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;

	/**
	 * Returns a Bitmap instance of the supplied DisplayObject.
	 */
	public function createBitmap(source:DisplayObject, useSmoothing:Boolean = true):Bitmap
	{
		const bitmapData:BitmapData = new BitmapData(source.width, source.height, true, 0xffffff);
		bitmapData.draw(source);

		const bitmap:Bitmap = new Bitmap(bitmapData);
		bitmap.smoothing = useSmoothing;

		return bitmap;
	}
}