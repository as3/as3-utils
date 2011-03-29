package utils.color {



	/**
	 Converts a 32-bit ARGB color value into a hexadecimal String representation.
	 @param a A uint from 0 to 255 representing the alpha value.
	 @param r A uint from 0 to 255 representing the red color value.
	 @param g A uint from 0 to 255 representing the green color value.
	 @param b A uint from 0 to 255 representing the blue color value.
	 @return Returns a hexadecimal color as a String.
	 @example
	 <code>
	 var hexColor : String = ColorUtil.getHexStringFromARGB(128, 255, 0, 255);
	 trace(hexColor); // Traces 80FF00FF
	 </code>
	 */
	public function getHexStringFromARGB(a:uint, r:uint, g:uint, b:uint):String {
		var aa:String = a.toString(16);
		var rr:String = r.toString(16);
		var gg:String = g.toString(16);
		var bb:String = b.toString(16);
		aa = (aa.length == 1) ? '0' + aa : aa;
		rr = (rr.length == 1) ? '0' + rr : rr;
		gg = (gg.length == 1) ? '0' + gg : gg;
		bb = (bb.length == 1) ? '0' + bb : bb;
		return (aa + rr + gg + bb).toUpperCase();
	}
}
