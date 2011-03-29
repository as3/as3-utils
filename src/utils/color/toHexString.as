package utils.color {



	/**
	 * Convert a hexadecimal number to a string representation with ECMAScript notation: <code>0xrrggbb</code>.
	 */
	public function toHexString(hex:uint):String {
		return "0x" + (hex.toString(16)).toUpperCase();
	}
}
