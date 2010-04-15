package utils.color
{
	/**
	 * Convert RGB values to HSV values.
	 * @param red           0 to 1 scale.
	 * @param green         0 to 1 scale.
	 * @param blue          0 to 1 scale.
	 * @return                      Object with H,S,V values:<ul>
	 *                                              <li>h - on 0 to 360 scale</li>
	 *                                              <li>s - on 0 to 1 scale</li>
	 *                                              <li>v - on 0 to 1 scale</li></ul>
	 */
	public function RGBtoHSV(red:Number, green:Number, blue:Number):Object
	{
		var min:Number, max:Number, s:Number, v:Number, h:Number = 0;

		max = Math.max(red, Math.max(green, blue));
		min = Math.min(red, Math.min(green, blue));

		if (max == 0)
		{
			return { h: 0, s: 0, v: 0 };
		}

		v = max;
		s = (max - min) / max;

		h = RGBToHue(red, green, blue);

		return { h: h, s: s, v: v };
	}
}