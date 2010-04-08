package utils.color
{
	/**
	 * Convert HSV to HLS using RGB conversions: color preservation may be dubious.
	 */
	public function HSVtoHSL(hue:Number, saturation:Number, value:Number):Object
	{
		var rgbVal:Object = HSVtoRGB(hue, saturation, value);
		return RGBtoHSL(rgbVal.r, rgbVal.g, rgbVal.b);
	}
}