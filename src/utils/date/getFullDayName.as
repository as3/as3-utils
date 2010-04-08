package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the English full day name for the day that
	 *       the Date represents.
	 *
	 *       @param d The Date instance whose day will be used to retrieve the
	 *       full day name.
	 *
	 *       @return An English full day name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see FULL_DAY
	 */
	public function getFullDayName(d:Date):String
	{
		return DateBase.dayNamesLong[d.getDay()];
	}
}