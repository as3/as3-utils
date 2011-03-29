package utils.color {
	import utils.number.clamp;



	/**
	 * Change the contrast of a hexadecimal Number by a certain increment
	 * @param hex           color value to shift contrast on
	 * @param inc           increment value to shift
	 * @return new hex color value
	 */
	public function changeContrast(hex:Number, inc:Number):Number {
		var o:Object = getRGB(hex);
		o.r = clamp(o.r + inc, 0, 255);
		o.g = clamp(o.g + inc, 0, 255);
		o.b = clamp(o.b + inc, 0, 255);
		return toRGBComponents(o.r, o.g, o.b);
	}
}
