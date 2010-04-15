package utils.string
{
	/**
	 * Returns the string with slashes removed from all characters specified in the <code>chars</code> parameter
	 * @param str the string to return stripped of slashes
	 * @param chars the string of chars to remove slashes from
	 * @return
	 */
	public function stripSlashes(str:String, chars:String = "\""):String
	{
		// return the unaltered string if str or chars are null or empty
		if (!str || !chars)
			return str;

		// slash unsafe characters
		chars = slashUnsafeChars(chars);

		// build the regular expression that removes the slashes
		var regex:RegExp = new RegExp("\\\\([" + chars + "])", "g");

		// strip the slashes from the specified characters
		return str.replace(regex, "$1");
	}
}