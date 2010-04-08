package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	// BITMAP VALUE AVERAGING

	/**
	 * Sample & average the <i>Red</i> (RGB) value from a display object or one of its region.
	 * @param src                   of the display object.
	 * @param accuracy              percentage of pixels to sample when averaging.
	 * @param region                to sample from [Default: null = entire src object].
	 * @return                              the sampled average <i>red</i> value on a scale of 0-255.
	 */
	public function averageRed(src:DisplayObject, accuracy:Number = 0.01, region:Rectangle = null):int
	{
		return averageColorProperty(src, region, accuracy, 'r');
	}
}