package utils.conversion
{
	/**
	   Converts minutes to milliseconds.

	   @param minutes: The number of minutes.
	   @return Returns the number of milliseconds.
	 */
	public function minutesToMilliseconds(minutes:Number):Number
	{
		return secondsToMilliseconds(minutesToSeconds(minutes));
	}
}