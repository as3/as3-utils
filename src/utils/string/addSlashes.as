package utils.string
{
	/**
	 * Returns the string with slashes prepended to all characters specified in the <code>chars</code> parameter
	 * @param str the string to return slashed
	 * @param chars the string of chars to slash
	 * @return
	 */
	public function addSlashes(str:String, chars:String = "\""):String
	{
		// return the unaltered string if str or chars are null or empty
		if (!str || !chars)
			return str;

		// slash unsafe characters
		chars = slashUnsafeChars(chars);

		// build the regular expression that handles the slashing
		var regex:RegExp = new RegExp("([" + chars + "])", "g");

		// add the slashes to the specified characters
		return str.replace(regex, "\\$1");
	}
}