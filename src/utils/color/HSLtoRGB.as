package utils.color
{
	/**
	 * Convert HSL values to RGB values.
	 * @param hue                   0 to 360.
	 * @param luminance     0 to 1.
	 * @param saturation    0 to 1.
	 * @return                              Object with R,G,B values on 0 to 1 scale.
	 */
	public function HSLtoRGB(hue:Number, luminance:Number, saturation:Number):Object
	{
		var delta:Number;
		if (luminance < 0.5)
		{
			delta = saturation * luminance;
		}
		else
		{
			delta = saturation * (1 - luminance);
		}
		return HueToRGB(luminance - delta, luminance + delta, hue);
	}
}