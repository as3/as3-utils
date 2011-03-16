package utils.string {



	/**
	 * Returns everything before the first occurrence of the provided character in the String.
	 * @param value Input String
	 * @param ch Character or sub-string
	 * @returns Everything before the first occurence of the provided character in the String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function beforeFirst(value:String, ch:String):String {
		var out:String = "";

		if(value) {
			var idx:int = value.indexOf(ch);

			if(idx != -1) {
				out = value.substr(0, idx);
			}
		}

		return out;
	}
}
