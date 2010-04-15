package utils.conversion
{
	/**
	   Converts minutes to days.

	   @param minutes: The number of minutes.
	   @return Returns the number of days.
	 */
	public function minutesToDays(minutes:Number):Number
	{
		return hoursToDays(minutesToHours(minutes));
	}
}