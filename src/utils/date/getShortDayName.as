package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the English Short Day name (3 letters) for the day that
	 *       the Date represents.
	 *
	 *       @param d The Date instance whose day will be used to retrieve the
	 *       short day name.
	 *
	 *       @return An English 3 Letter day abbreviation.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see SHORT_DAY
	 */
	public function getShortDayName(d:Date):String
	{
		return DateBase.dayNamesShort[d.getDay()];
	}
}