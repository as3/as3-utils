package utils.conversion
{
	/**
	   Converts seconds to days.

	   @param seconds: The number of seconds.
	   @return Returns the number of days.
	 */
	public function secondsToDays(seconds:Number):Number
	{
		return hoursToDays(secondsToHours(seconds));
	}
}