package utils.display
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.PixelSnapping;

	/**
	 * Creates a thumbnail of a BitmapData. The thumbnail can be any size as
	 * the copied image will be scaled proportionally and cropped if necessary
	 * to fit into the thumbnail area. If the image needs to be cropped in order
	 * to fit the thumbnail area, the alignment of the crop can be specified
	 *
	 * @param image
	 *
	 * The source image for which a thumbnail should be created. The source
	 * will not be modified
	 *
	 * @param width
	 *
	 * The width of the thumbnail
	 *
	 * @param height
	 *
	 * The height of the thumbnail
	 *
	 * @param align
	 *
	 * If the thumbnail has a different aspect ratio to the source image, although
	 * the image will be scaled to fit along one axis it will be necessary to crop
	 * the image. Use this parameter to specify how the copied and scaled image should
	 * be aligned within the thumbnail boundaries. Use a constant from the Alignment
	 * enumeration clazz
	 *
	 * @param smooth
	 *
	 * Whether to apply bitmap smoothing to the thumbnail
	 */

	public function createThumb(image:BitmapData, width:int, height:int, align:String = "C", smooth:Boolean = true):Bitmap
	{
		var source:Bitmap = new Bitmap(image);
		var thumbnail:BitmapData = new BitmapData(width, height, false, 0x0);

		thumbnail.draw(image, fitIntoRect(source, thumbnail.rect, true, align, false), null, null, null, smooth);
		source = null;

		return new Bitmap(thumbnail, PixelSnapping.AUTO, smooth);
	}
}