package utils.string
{
	/**
	 * Returns the truncated string with an appended ellipsis (...) if the length of <code>str</code> is greater than <code>len</code>.
	 * If the length of <code>str</code> is less than or equal to <code>len</code>, the method returns <code>str</code> unaltered.
	 * @param str the string to truncate
	 * @param len the length to limit the string to
	 * @return
	 */
	public function truncate(str:String, len:int):String
	{
		// return the string if str is null, empty, or the length of str is less than or equal to len
		if (!str || str.length <= len)
			return str;

		// short str to len
		str = str.substr(0, len);

		// trim the right side of whitespace
		str = str.replace(constants.TRIM_RIGHT_REGEX, "");

		// append the ellipsis
		return str + "...";
	}
}