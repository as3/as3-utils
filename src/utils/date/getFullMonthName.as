package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the English full Month name for the Month that
	 *       the Date represents.
	 *
	 *       @param d The Date instance whose month will be used to retrieve the
	 *       full month name.
	 *
	 *       @return An English full month name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see FULL_MONTH
	 */
	public function getFullMonthName(d:Date):String
	{
		return DateBase.monthNamesLong[d.getMonth()];
	}
}