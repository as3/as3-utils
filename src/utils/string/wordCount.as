package utils.string {



	/**
	 * Determines the number of words in a String.
	 * @param value Input String
	 * @returns Number of words in a String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function wordCount(value:String):uint {
		var out:uint = 0;

		if(value) {
			out = value.match(/\b\w+\b/g).length;
		}

		return out;
	}
}
