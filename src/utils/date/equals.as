package utils.date
{
	/**
	   Determines if two Dates are the same time.

	   @param first: First Date to compare to <code>second</code>.
	   @param second: Second Date to compare to <code>first</code>.
	   @return Returns <code>true</code> if Dates are the same; otherwise <code>false</code>.
	 */
	public function equals(first:Date, second:Date):Boolean
	{
		return first.valueOf() == second.valueOf();
	}
}