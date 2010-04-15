package utils.date
{
	/**
	   Determines if year is a leap year or a common year.

	   @param year: The full year.
	   @return Returns <code>true</code> if year is a leap year; otherwise <code>false</code>.
	   @example
	   <code>
	   var myDate:Date = new Date(2000, 0, 1);

	   trace(DateUtil.isLeapYear(myDate.getFullYear())); // Traces true
	   </code>
	 */
	public function isLeapYear(year:Number):Boolean
	{
		return getDaysInMonth(year, 1) == 29;
	}
}