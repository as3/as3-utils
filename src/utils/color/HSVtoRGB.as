package utils.color
{
	/**
	 * Convert HSV values to RGB values.
	 * @param hue                   on 0 to 360 scale.
	 * @param saturation    on 0 to 1 scale.
	 * @param value                 on 0 to 1 scale.
	 * @return                              Object with R,G,B values on 0 to 1 scale.
	 */
	public function HSVtoRGB(hue:Number, saturation:Number, value:Number):Object
	{
		var min:Number = (1 - saturation) * value;

		return HueToRGB(min, value, hue);
	}
}