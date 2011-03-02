package utils.string {



	/**
	 *       Removes whitespace from the end of the specified string.
	 *
	 *       @param value The String whose ending whitespace will will be removed.
	 *
	 *       @returns A String with whitespace removed from the end
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function rtrim(value:String):String {
		var out:String = "";

		if(value) {
			out = value.replace(/\s+$/, "");
		}

		return out;
	}
}
