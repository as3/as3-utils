package utils.date
{
	/**
	 * Returns the English name of the provided month.
	 * @param month the index of the month, starting at zero
	 * @return
	 */
	public function getMonthName(month:int):String
	{
		return monthNames[month];
	}
}