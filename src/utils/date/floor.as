package utils.date
{
	/**
	 * Returns the rounded down date where the time is 12:00am.
	 * If a date is not provided, the current date is used.
	 * @param date the date to round down
	 * @return
	 */
	public function floor(date:Date = null):Date
	{
		if (!date)
			date = new Date();

		date.hours = 0.0;
		date.minutes = 0.0;
		date.seconds = 0.0;
		date.milliseconds = 0.0;

		return date;
	}
}