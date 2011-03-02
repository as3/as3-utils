package utils.string {



	/**
	 * Returns the specified String in reverse word order.
	 * @param value String that will be reversed
	 * @returns Output String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function reverseWords(value:String):String {
		var out:String = "";

		if(value) {
			out = value.split(/\s+/).reverse().join("");
		}

		return out;
	}
}
