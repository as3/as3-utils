package utils.string
{
	/**
	 *       Does a case insensitive compare or two strings and returns true if
	 *       they are equal.
	 *
	 *       @param s1 The first string to compare.
	 *
	 *       @param s2 The second string to compare.
	 *
	 *       @returns A boolean value indicating whether the strings' values are
	 *       equal in a case sensitive compare.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function stringsAreEqual(s1:String, s2:String,
		caseSensitive:Boolean):Boolean
	{
		if (caseSensitive)
		{
			return (s1 == s2);
		}
		else
		{
			return (s1.toUpperCase() == s2.toUpperCase());
		}
	}
}