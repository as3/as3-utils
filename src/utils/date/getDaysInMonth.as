package utils.date
{
	/**
	   Finds the number of days in the given month.

	   @param year: The full year.
	   @param month: The month number (0 for January, 1 for February, and so on).
	   @return The number of days in the month; 28 through 31.
	   @example
	   <code>
	   var myDate:Date = new Date(2000, 0, 1);

	   trace(DateUtil.getDaysInMonth(myDate.getFullYear(), myDate.getMonth())); // Traces 31
	   </code>
	 */
	public function getDaysInMonth(year:Number, month:Number):uint
	{
		return (new Date(year, ++month, 0)).getDate();
	}
}