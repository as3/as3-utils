package utils.conversion
{
	/**
	   Converts days to seconds.

	   @param days: The number of days.
	   @return Returns the number of seconds.
	 */
	public function daysToSeconds(days:Number):Number
	{
		return minutesToSeconds(daysToMinutes(days));
	}
}