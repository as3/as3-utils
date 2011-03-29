package utils.color {



	/**
	 * Convert a hexadecimal number to a string representation with HTML notation: <code>#rrggbb</code>.
	 */
	public function toHTML(hex:uint):String {
		return "#" + (hex.toString(16)).toUpperCase();
	}
}
