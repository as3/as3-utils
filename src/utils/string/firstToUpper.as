package utils.string
{
	/**
	 * Capitalize the first character in the string.
	 */
	public function firstToUpper(str:String):String
	{
		return str.charAt(0).toUpperCase() + str.substr(1);
	}
}