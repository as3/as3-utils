package utils.string {



	/**
	 * Returns everything after the last occurrence of the provided character in value.
	 * @param value Input String
	 * @param ch Character or sub-string
	 * @return Output String
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function afterLast(value:String, ch:String):String {
		var out:String = "";

		if(value) {
			var idx:int = value.lastIndexOf(ch);

			if(idx != -1) {
				idx += ch.length;
				out = value.substr(idx);
			}
		}

		return out;
	}
}
