package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the English Short Month name (3 letters) for the Month that
	 *       the Date represents.
	 *
	 *       @param d The Date instance whose month will be used to retrieve the
	 *       short month name.
	 *
	 *       @return An English 3 Letter Month abbreviation.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see SHORT_MONTH
	 */
	public function getShortMonthName(d:Date):String
	{
		return DateBase.monthNamesShort[d.getMonth()];
	}
}