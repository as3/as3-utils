package utils.date {



	/**
	 * Returns the English abbreviation name of the provided day.
	 * @param day the index of the day, where zero returns 'Sun' and six returns 'Sat'
	 * @return
	 */
	public function getDayAbbrName(day:int):String {
		return dayAbbrNames[day];
	}
}
