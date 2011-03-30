package utils.string {



	/**
	 * Returns everything after the first occurrence of begin and before the first occurrence of end in String.
	 * @param value Input String
	 * @param start Character or sub-string to use as the start index
	 * @param end Character or sub-string to use as the end index
	 * @returns Everything after the first occurrence of begin and before the first occurrence of end in String.
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function between(value:String, start:String, end:String):String {
		var out:String = "";

		if(value) {
			var startIdx:int = value.indexOf(start);

			if(startIdx != -1) {
				startIdx += start.length; // RM: should we support multiple chars? (or ++startIdx);

				var endIdx:int = value.indexOf(end, startIdx);

				if(endIdx != -1) {
					out = value.substr(startIdx, endIdx - startIdx);
				}
			}
		}

		return out;
	}
}
