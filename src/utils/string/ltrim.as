package utils.string {



	/**
	 *       Removes whitespace from the front of the specified string.
	 *
	 *       @param value The String whose beginning whitespace will will be removed.
	 *
	 *       @returns A String with whitespace removed from the begining
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function ltrim(value:String):String {
		var out:String = "";

		if(value) {
			out = value.replace(/^\s+/, "");
		}

		return out;
	}
}
