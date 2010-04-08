package utils.color
{
	/**
	 * Convert HSL to HSV using RGB conversions: color preservation may be dubious.
	 */
	public function HSLtoHSV(hue:Number, luminance:Number, saturation:Number):Object
	{
		var rgbVal:Object = HSLtoRGB(hue, luminance, saturation);
		return RGBtoHSV(rgbVal.r, rgbVal.g, rgbVal.b);
	}
}