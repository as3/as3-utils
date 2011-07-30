package utils.date
{
	/**
	 * Converts a date into just after midnight.
	 */
	public function makeMorning(d:Date):Date
	{
		d = new Date(d.time);
		d.hours = 0;
		d.minutes = 0;
		d.seconds = 0;
		d.milliseconds = 0;
		return d;
	}
}