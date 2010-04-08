package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	 * Sample & average the <i>Hue</i> (HSL) value from a display object or one of its region.
	 * @param src                   of the display object.
	 * @param accuracy              percentage of pixels to sample when averaging.
	 * @param region                to sample from [Default: null = entire src object].
	 * @return                              the sampled average <i>hue</i> value on a scale of 0-360.
	 */
	public function averageHue(src:DisplayObject, accuracy:Number = 0.01, region:Rectangle = null):int
	{
		return averageColorProperty(src, region, accuracy, 'h');
	}
}