package utils.conversion
{
	/**
	   Converts hours to milliseconds.

	   @param hours: The number of hours.
	   @return Returns the number of milliseconds.
	 */
	public function hoursToMilliseconds(hours:Number):Number
	{
		return secondsToMilliseconds(hoursToSeconds(hours));
	}
}