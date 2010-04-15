package utils.date
{
	/**
	   Determines if or not the date is in daylight saving time.

	   @param d: Date to find if it is during daylight savings time.
	   @return Returns <code>true</code> if daylight savings time; otherwise <code>false</code>.
	 */
	public function isDaylightSavings(d:Date):Boolean
	{
		var months:uint = 12;
		var offset:uint = d.getTimezoneOffset();
		var offsetCheck:Number;

		while (months--)
		{
			offsetCheck = (new Date(d.getFullYear(), months, 1)).getTimezoneOffset();

			if (offsetCheck != offset)
				return (offsetCheck > offset);
		}

		return false;
	}
}