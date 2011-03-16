package utils.string {



	/**
	 * Returns the specified String in reverse character order.
	 * @param value String that will be reversed
	 * @returns Output String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function reverse(value:String):String {
		var out:String = "";

		if(value) {
			out = value.split("").reverse().join("");
		}

		return out;
	}
}
