package utils.date
{
	/**
	 * Returns the English name of the provided day.
	 * @param day the index of the day, where zero returns 'Sunday' and six returns 'Saturday'
	 * @return
	 */
	public function getDayName(day:int):String
	{
		return dayNames[day];
	}
}