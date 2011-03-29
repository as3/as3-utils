package utils.color {



	/**
	 * Convert an RGB Hexadecimal value to HSL values
	 * @param red           0 - 1 scale.
	 * @param green         0 - 1 scale.
	 * @param blue          0 - 1 scale.
	 * @return Object with h (hue), l (lightness), s (saturation) values:<ul>
	 * <li><code>h</code> on 0 - 360 scale.</li>
	 * <li><code>l</code> on 0 - 255 scale.</li>
	 * <li><code>s</code> on 0 - 1 scale.</li></ul>
	 */
	public function RGBtoHSL(red:Number, green:Number, blue:Number):Object {
		var min:Number, max:Number, delta:Number, l:Number, s:Number, h:Number = 0;

		max = Math.max(red, Math.max(green, blue));
		min = Math.min(red, Math.min(green, blue));

		//l = (min + max) / 2;
		l = (min + max) * 0.5;
		// L
		if(l == 0) {
			return { h: h, l: 0, s: 1 };
		}

		//delta = (max - min) / 2;
		delta = (max - min) * 0.5;

		if(l < 0.5) {
			// S
			s = delta / l;
		}
		else {
			s = delta / (1 - l);
		}
		// H
		h = RGBToHue(red, green, blue);

		return { h: h, l: l, s: s };
	}
}
