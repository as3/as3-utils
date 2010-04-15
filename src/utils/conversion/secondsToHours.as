package utils.conversion
{

	/**
	   Converts seconds to hours.

	   @param seconds: The number of seconds.
	   @return Returns the number of hours.
	 */
	public function secondsToHours(seconds:Number):Number
	{
		return minutesToHours(secondsToMinutes(seconds));
	}
}