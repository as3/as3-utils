package utils.string {



	/**
	 * Pads value with specified padChar character to a specified length from the right.
	 * @param value Input String
	 * @param padChar Character for pad
	 * @param length Length to pad to
	 * @returns Padded String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function padRight(value:String, padChar:String, length:uint):String {
		var s:String = value;

		while(s.length < length) {
			s += padChar;
		}

		return s;
	}
}
