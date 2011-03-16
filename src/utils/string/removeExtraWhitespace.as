package utils.string {



	/**
	 * Removes extraneous whitespace (extra spaces, tabs, line breaks, etc) from the specified String.
	 * @param value String whose extraneous whitespace will be removed
	 * @returns Output String
	 */
	public function removeExtraWhitespace(value:String):String {
		var out:String = "";

		if(value) {
			var str:String = trim(value);

			out = str.replace(/\s+/g, " ");
		}

		return out;
	}
}
