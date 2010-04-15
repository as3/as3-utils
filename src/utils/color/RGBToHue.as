package utils.color
{
	import utils.range.center;

	/**
	 * Convert RGB values to a hue using a linear transformation.
	 * @param red           value on 0 to 1 scale.
	 * @param green         value on 0 to 1 scale.
	 * @param blue          value on 0 to 1 scale.
	 * @return                      hue degree between 0 and 360.
	 */
	public function RGBToHue(red:Number, green:Number, blue:Number):uint
	{
		var f:Number, min:Number, mid:Number, max:Number, n:Number;

		max = Math.max(red, Math.max(green, blue));
		min = Math.min(red, Math.min(green, blue));

		// achromatic case
		if (max - min == 0)
		{
			return 0;
		}

		mid = center(red, green, blue);

		// using this loop to avoid super-ugly nested ifs
		while (true)
		{
			if (red == max)
			{
				if (blue == min)
					n = 0;
				else
					n = 5;
				break;
			}

			if (green == max)
			{
				if (blue == min)
					n = 1;
				else
					n = 2;
				break;
			}

			if (red == min)
				n = 3;
			else
				n = 4;
			break;
		}

		if ((n % 2) == 0)
		{
			f = mid - min;
		}
		else
		{
			f = max - mid;
		}
		f = f / (max - min);

		return 60 * (n + f);
	}
}