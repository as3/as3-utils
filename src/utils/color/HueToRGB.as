package utils.color
{
	/**
	 * Convert hue to RGB values using a linear transformation.
	 * @param min   of R,G,B.
	 * @param max   of R,G,B.
	 * @param hue   value angle hue.
	 * @return              Object with R,G,B properties on 0-1 scale.
	 */
	public function HueToRGB(min:Number, max:Number, hue:Number):Object
	{
		const HUE_MAX:uint = 360;

		var mu:Number, md:Number, F:Number, n:Number;
		while (hue < 0)
		{
			hue += HUE_MAX;
		}
		n = Math.floor(hue / 60);
		F = (hue - n * 60) / 60;
		n %= 6;

		mu = min + ((max - min) * F);
		md = max - ((max - min) * F);

		switch (n)
		{
			case 0:
				return { r: max, g: mu, b: min };
			case 1:
				return { r: md, g: max, b: min };
			case 2:
				return { r: min, g: max, b: mu };
			case 3:
				return { r: min, g: md, b: max };
			case 4:
				return { r: mu, g: min, b: max };
			case 5:
				return { r: max, g: min, b: md };
		}
		return null;
	}
}