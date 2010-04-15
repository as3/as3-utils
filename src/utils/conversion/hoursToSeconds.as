package utils.conversion
{
	/**
	   Converts hours to seconds.

	   @param hours: The number of hours.
	   @return Returns the number of seconds.
	 */
	public function hoursToSeconds(hours:Number):Number
	{
		return minutesToSeconds(hoursToMinutes(hours));
	}
}