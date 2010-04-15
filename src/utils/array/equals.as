package utils.array
{
	/**
	   Determines if two Arrays contain the same objects at the same index.

	   @param first: First Array to compare to the <code>second</code>.
	   @param second: Second Array to compare to the <code>first</code>.
	   @return Returns <code>true</code> if Arrays are the same; otherwise <code>false</code>.
	 */
	public function equals(first:Array, second:Array):Boolean
	{
		var i:uint = first.length;
		if (i != second.length)
			return false;

		while (i--)
			if (first[i] != second[i])
				return false;

		return true;
	}
}