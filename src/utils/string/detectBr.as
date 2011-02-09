package utils.string
{
	/**
	 * Detect HTML line breaks.
	 */
	public function detectBr(str:String):Boolean
	{
		return str.split("<br").length > 1;
	}
}