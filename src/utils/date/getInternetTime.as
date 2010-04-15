package utils.date
{
	import utils.conversion.minutesToHours;
	import utils.conversion.secondsToHours;

	/**
	   Converts current time into Swatch internet time or beats.

	   @param d: Date object to convert.
	   @return Returns time in beats (0 to 999).
	 */
	public function getInternetTime(d:Date):Number
	{
		var beats:uint = ((d.getUTCHours() + 1 + minutesToHours(d.getUTCMinutes()) + secondsToHours(d.getUTCSeconds())) / 0.024);
		return (beats > 1000) ? beats - 1000 : beats;
	}
}