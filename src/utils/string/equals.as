package utils.string
{
	/**
	 * Does a case insensitive compare or two strings and returns true if they are equal.
	 */
	public function equals(s1:String, s2:String, caseSensitive:Boolean = false):Boolean
	{
		return (caseSensitive) ? (s1 == s2) : (s1.toUpperCase() == s2.toUpperCase());
	}

}