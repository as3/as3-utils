package utils.color
{
	/**
			Converts a 32-bit ARGB color value into an ARGB object.

			@param color: The 32-bit ARGB color value.
			@return Returns an object with the properties a, r, g, and b defined.
			@example
				<code>
					var myRGB:Object = ColorUtil.getARGB(0xCCFF00FF);
					trace("Alpha = " + myRGB.a);
					trace("Red = " + myRGB.r);
					trace("Green = " + myRGB.g);
					trace("Blue = " + myRGB.b);
				</code>
		*/
		public function getARGB(color : uint) : Object {
			var c : Object = {};
			c.a = color >> 24 & 0xFF;
			c.r = color >> 16 & 0xFF;
			c.g = color >> 8 & 0xFF;
			c.b = color & 0xFF;
			return c;
		}
}