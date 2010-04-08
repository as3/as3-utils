package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the index of the day that the full day name string
	 *       represents.
	 *
	 *       @param m A full day name.
	 *
	 *       @return A int that represents that full day represented by the specifed
	 *       full month name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see FULL_DAY
	 */
	public function getFullDayIndex(d:String):int
	{
		return DateBase.dayNamesLong.indexOf(d);
	}
}