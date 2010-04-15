package utils.conversion
{
	/**
	   Converts days to minutes.

	   @param days: The number of days.
	   @return Returns the number of minutes.
	 */
	public function daysToMinutes(days:Number):Number
	{
		return hoursToMinutes(daysToHours(days));
	}
}