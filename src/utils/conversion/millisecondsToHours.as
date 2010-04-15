package utils.conversion
{
	/**
	   Converts milliseconds to hours.

	   @param milliseconds: The number of milliseconds.
	   @return Returns the number of hours.
	 */
	public function millisecondsToHours(milliseconds:Number):Number
	{
		return minutesToHours(millisecondsToMinutes(milliseconds));
	}
}