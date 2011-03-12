package utils.color
{
	/**
	   Converts a series of individual RGB(A) values to a 32-bit ARGB color value.

	   @param r A uint from 0 to 255 representing the red color value.
	   @param g A uint from 0 to 255 representing the green color value.
	   @param b A uint from 0 to 255 representing the blue color value.
	   @param a A uint from 0 to 255 representing the alpha value. Default is <code>255</code>.
	   @return Returns a hexidecimal color as a String.
	   @example
	   <listing version="3.0">
	   var hexColor : String = ColorUtil.getHexStringFromARGB(128, 255, 0, 255);
	   trace(hexColor); // Traces 80FF00FF
	   </listing>
	 */
	public function getColor(r:uint, g:uint, b:uint, a:uint = 255):uint
	{
		return (a << 24) | (r << 16) | (g << 8) | b;
	}
}