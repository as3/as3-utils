package utils.validation
{
	/**
	 * Validate as "http://" or "https://".
	 */
	public function isURL(str:String):Boolean
	{
		return (str.substring(0, 7) == "http://" || str.substring(0, 8) == "https://");
	}
}