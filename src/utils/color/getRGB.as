package utils.color
{
	/**
	   Converts a 24-bit RGB color value into an RGB object.

	   @param color: The 24-bit RGB color value.
	   @return Returns an object with the properties r, g, and b defined.
	   @example
	   <code>
	   var myRGB:Object = ColorUtil.getRGB(0xFF00FF);
	   trace("Red = " + myRGB.r);
	   trace("Green = " + myRGB.g);
	   trace("Blue = " + myRGB.b);
	   </code>
	 */
	public function getRGB(color:uint):Object
	{
		var c:Object = {};
		c.r = color >> 16 & 0xFF;
		c.g = color >> 8 & 0xFF;
		c.b = color & 0xFF;
		return c;
	}
}