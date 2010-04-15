package utils.conversion
{
	/**
	   Converts days to milliseconds.

	   @param days: The number of days.
	   @return Returns the number of milliseconds.
	 */
	public function daysToMilliseconds(days:Number):Number
	{
		return secondsToMilliseconds(daysToSeconds(days));
	}
}