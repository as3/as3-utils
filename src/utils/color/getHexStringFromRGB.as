package utils.color {



	/**
	 Converts an RGB color value into a hexadecimal String representation.
	 @param r A uint from 0 to 255 representing the red color value.
	 @param g A uint from 0 to 255 representing the green color value.
	 @param b A uint from 0 to 255 representing the blue color value.
	 @return Returns a hexadecimal color as a String.
	 @example
	 <code>
	 var hexColor : String = ColorUtil.getHexStringFromRGB(255, 0, 255);
	 trace(hexColor); // Traces FF00FF
	 </code>
	 */
	public function getHexStringFromRGB(r:uint, g:uint, b:uint):String {
		var rr:String = r.toString(16);
		var gg:String = g.toString(16);
		var bb:String = b.toString(16);
		rr = (rr.length == 1) ? '0' + rr : rr;
		gg = (gg.length == 1) ? '0' + gg : gg;
		bb = (bb.length == 1) ? '0' + bb : bb;
		return (rr + gg + bb).toUpperCase();
	}
}
