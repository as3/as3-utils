package utils.conversion
{
	/**
	   Converts milliseconds to minutes.

	   @param milliseconds: The number of milliseconds.
	   @return Returns the number of minutes.
	 */
	public function millisecondsToMinutes(milliseconds:Number):Number
	{
		return secondsToMinutes(millisecondsToSeconds(milliseconds));
	}
}