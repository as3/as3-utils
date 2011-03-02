package utils.string {



	/**
	 * Returns everything after the first occurrence of the provided character in the String.
	 * @param value Input String
	 * @param ch Character or sub-string
	 * @returns Output String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function afterFirst(value:String, ch:String):String {
		var out:String = "";

		if(value) {
			var idx:int = value.indexOf(ch);

			if(idx != -1) {
				idx += ch.length;
				out = value.substr(idx);
			}
		}

		return out;
	}
}
