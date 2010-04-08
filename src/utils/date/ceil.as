package utils.date
{
	/**
	 * Returns the rounded up date where the time is 12:00am.
	 * If a date is not provided, the current date is used.
	 * @param date the date to round up
	 * @return
	 */
	public function ceil(date:Date = null):Date
	{
		if (!date)
			date = new Date();

		date.date += 1.0;
		date.hours = 0.0;
		date.minutes = 0.0;
		date.seconds = 0.0;
		date.milliseconds = 0.0;

		return date;
	}
}