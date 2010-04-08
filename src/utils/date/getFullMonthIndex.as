package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the index of the month that the full month name string
	 *       represents.
	 *
	 *       @param m A full month name.
	 *
	 *       @return A int that represents that month represented by the specifed
	 *       full month name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see FULL_MONTH
	 */
	public function getFullMonthIndex(m:String):int
	{
		return DateBase.monthNamesLong.indexOf(m);
	}
}