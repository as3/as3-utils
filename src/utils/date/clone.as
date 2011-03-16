package utils.date
{
	public function clone(date:Date):Date
	{
		return new Date(date.fullYear, date.month, date.date, date.hours, date.minutes, date.seconds, date.milliseconds);
	}
}