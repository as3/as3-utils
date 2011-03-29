package utils.string {



	/**
	 *       Determines whether the specified string begins with the specified prefix.
	 *       @param input The string that the prefix will be checked against.
	 *       @param prefix The prefix that will be tested against the string.
	 *       @returns True if the string starts with the prefix, false if it does not.
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function beginsWith(input:String, prefix:String):Boolean {
		return (prefix == input.substring(0, prefix.length));
	}
}
