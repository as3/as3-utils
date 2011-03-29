package utils.string {



	/**
	 *       Determines whether the specified string ends with the specified suffix.
	 *       @param input The string that the suffix will be checked against.
	 *       @param suffix The suffix that will be tested against the string.
	 *       @returns True if the string ends with the suffix, false if it does not.
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function endsWith(input:String, suffix:String):Boolean {
		return (suffix == input.substring(input.length - suffix.length));
	}
}
