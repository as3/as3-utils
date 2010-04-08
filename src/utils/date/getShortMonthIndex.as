package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the index of the month that the short month name string
	 *       represents.
	 *
	 *       @param m The 3 letter abbreviation representing a short month name.
	 *
	 *       @param Optional parameter indicating whether the search should be case
	 *       sensitive
	 *
	 *       @return A int that represents that month represented by the specifed
	 *       short name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see SHORT_MONTH
	 */
	public function getShortMonthIndex(m:String):int
	{
		return DateBase.monthNamesShort.indexOf(m);
	}
}