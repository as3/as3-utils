package utils.conversion
{

	/**
	   Converts milliseconds to days.

	   @param milliseconds: The number of milliseconds.
	   @return Returns the number of days.
	 */
	public function millisecondsToDays(milliseconds:Number):Number
	{
		return hoursToDays(millisecondsToHours(milliseconds));
	}
}