package utils.string {



	/**
	 * Pads value with specified padChar character to a specified length from the left.
	 * @param value Input String
	 * @param padChar Character for pad
	 * @param length Length to pad to
	 * @returns Padded String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function padLeft(value:String, padChar:String, length:uint):String {
		var s:String = value;

		while(s.length < length) {
			s = padChar + s;
		}

		return s;
	}
}
