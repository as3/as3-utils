package utils.string {
	
	
	
	/**
	 *       Removes whitespace from the front and the end of the specified
	 *       string.
	 *
	 *       @param value The String whose beginning and ending whitespace will
	 *       will be removed.
	 *
	 *       @returns A String with whitespace removed from the begining and end
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function trim(value:String):String {
		var out:String = "";

		if(value) {
			out = value.replace(/^\s+|\s+$/g, "");
		}

		return out;
	}
}
