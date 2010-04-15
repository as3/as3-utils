package utils.date
{
	import utils.conversion.millisecondsToDays;

	/**
	   Determines the week number of year, weeks start on Mondays.

	   @param d: Date object to find the current week number of.
	   @return Returns the the week of the year the date falls in.
	 */
	public function getWeekOfTheYear(d:Date):uint
	{
		var firstDay:Date = new Date(d.getFullYear(), 0, 1);
		var dayOffset:uint = 9 - firstDay.getDay();
		var firstMonday:Date = new Date(d.getFullYear(), 0, (dayOffset > 7) ? dayOffset - 7 : dayOffset);
		var currentDay:Date = new Date(d.getFullYear(), d.getMonth(), d.getDate());
		var weekNumber:uint = (millisecondsToDays(currentDay.getTime() - firstMonday.getTime()) / 7) + 1;

		return (weekNumber == 0) ? getWeekOfTheYear(new Date(d.getFullYear() - 1, 11, 31)) : weekNumber;
	}
}