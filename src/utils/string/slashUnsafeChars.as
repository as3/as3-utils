package utils.string
{
	/**
	 * @private
	 * @param chars
	 * @return
	 */
	public function slashUnsafeChars(chars:String):String
	{
		var unsafeChar:String;
		var m:uint = constants.REGEX_UNSAFE_CHARS.length;

		for (var i:uint = 0; i < m; ++i)
		{
			unsafeChar = constants.REGEX_UNSAFE_CHARS.substr(i, 1);

			if (chars.indexOf(unsafeChar) != -1)
				chars = chars.replace(unsafeChar, "\\" + unsafeChar);
		}

		return chars;
	}
}