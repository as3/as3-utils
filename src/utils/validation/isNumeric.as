package utils.validation
{
	/**
	 * Validate if a string is composed entirely of numbers.
	 */
	public function isNumeric(str:String):Boolean
	{
		if (str == null)
		{
			return false;
		}
		var regx:RegExp = /^[-+]?\d*\.?\d+(?:[eE][-+]?\d+)?$/;
		return regx.test(str);
	}
}