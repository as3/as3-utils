package utils.date
{
	/**
	   Determines the difference between two dates.

	   @param startDate: The starting date.
	   @param endDate: The ending date.
	   @return Returns the difference in milliseconds between the two dates.
	   @example
	   <code>
	   trace(ConversionUtil.millisecondsToDays(DateUtil.getTimeBetween(new Date(2007, 0, 1), new Date(2007, 0, 11)))); // Traces 10
	   </code>
	 */
	public function getTimeBetween(startDate:Date, endDate:Date):Number
	{
		return endDate.getTime() - startDate.getTime();
	}
}