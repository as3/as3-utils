package utils.date
{
	/**
	 *       Returns a short hour (0 - 12) represented by the specified date.
	 *
	 *       If the hour is less than 12 (0 - 11 AM) then the hour will be returned.
	 *
	 *       If the hour is greater than 12 (12 - 23 PM) then the hour minus 12
	 *       will be returned.
	 *
	 *       @param d1 The Date from which to generate the short hour
	 *
	 *       @return An int between 0 and 13 ( 1 - 12 ) representing the short hour.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function getShortHour(d:Date):int
	{
		var h:int = d.hours;

		if (h == 0 || h == 12)
		{
			return 12;
		}
		else if (h > 12)
		{
			return h - 12;
		}
		else
		{
			return h;
		}
	}
}