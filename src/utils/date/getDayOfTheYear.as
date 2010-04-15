package utils.date
{
	/**
	   Gets the current day out of the total days in the year (starting from 0).

	   @param d: Date object to find the current day of the year from.
	   @return Returns the current day of the year (0-364 or 0-365 on a leap year).
	 */
	public function getDayOfTheYear(d:Date):uint
	{
		var firstDay:Date = new Date(d.getFullYear(), 0, 1);
		return (d.getTime() - firstDay.getTime()) / 86400000;
	}
}