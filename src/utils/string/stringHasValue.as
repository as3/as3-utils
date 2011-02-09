package utils.string
{
	/**
	 *       Specifies whether the specified string is either non-null, or contains
	 *       characters (i.e. length is greater that 0)
	 *
	 *       @param s The string which is being checked for a value
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function stringHasValue(s:String):Boolean
	{
		return (s != null && s.length > 0);
	}
}