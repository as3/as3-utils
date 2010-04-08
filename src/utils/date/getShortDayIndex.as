package utils.date
{
	import mx.formatters.DateBase;

	/**
	 *       Returns the index of the day that the short day name string
	 *       represents.
	 *
	 *       @param m A short day name.
	 *
	 *       @return A int that represents that short day represented by the specifed
	 *       full month name.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 *
	 *       @see SHORT_DAY
	 */
	public function getShortDayIndex(d:String):int
	{
		return DateBase.dayNamesShort.indexOf(d);
	}
}