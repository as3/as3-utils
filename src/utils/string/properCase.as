package utils.string {



	/**
	 * Properly cases the String in "sentence format".
	 * @param value Input String
	 * @returns Cased String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function properCase(value:String):String {
		var out:String = "";

		if(value) {
			var str:String = value.toLowerCase().replace(/\b([^.?;!]+)/, capitalize);

			out = str.replace(/\b[i]\b/, "I");
		}

		return out;
	}
}
