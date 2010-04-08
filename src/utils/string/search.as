package utils.string
{
	/**
	 * Search for key in string.
	 */
	public function search(str:String, key:String, caseSensitive:Boolean = true):Boolean
	{
		if (!caseSensitive)
		{
			str = str.toUpperCase();
			key = key.toUpperCase();
		}
		return (str.indexOf(key) <= -1) ? false : true;
	}
}