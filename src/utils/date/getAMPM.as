package utils.date
{
	/**
	 *       Returns a string indicating whether the date represents a time in the
	 *       ante meridiem (AM) or post meridiem (PM).
	 *
	 *       If the hour is less than 12 then "AM" will be returned.
	 *
	 *       If the hour is greater than 12 then "PM" will be returned.
	 *
	 *       @param d1 The Date from which to generate the 12 hour clock indicator.
	 *
	 *       @return A String ("AM" or "PM") indicating which half of the day the
	 *       hour represents.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function getAMPM(d:Date):String
	{
		return (d.hours > 11) ? "PM" : "AM";
	}
}