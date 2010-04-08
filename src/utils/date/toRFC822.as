package utils.date
{
	import mx.formatters.DateBase;

	/**
	 * Returns a date string formatted according to RFC822.
	 *
	 * @param d
	 *
	 * @returns String
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @tiptext
	 *
	 * @see http://asg.web.cmu.edu/rfc/rfc822.html
	 */
	public function toRFC822(d:Date):String
	{
		var date:Number = d.getUTCDate();
		var hours:Number = d.getUTCHours();
		var minutes:Number = d.getUTCMinutes();
		var seconds:Number = d.getUTCSeconds();
		var sb:String = new String();
		sb += DateBase.dayNamesShort[d.getUTCDay()];
		sb += ", ";

		if (date < 10)
		{
			sb += "0";
		}
		sb += String(date);
		sb += " ";
		//sb += DateUtil.SHORT_MONTH[d.getUTCMonth()];
		sb += DateBase.monthNamesShort[d.getUTCMonth()];
		sb += " ";
		sb += String(d.getUTCFullYear());
		sb += " ";
		if (hours < 10)
		{
			sb += "0";
		}
		sb += String(hours);
		sb += ":";
		if (minutes < 10)
		{
			sb += "0";
		}
		sb += String(minutes);
		sb += ":";
		if (seconds < 10)
		{
			sb += "0";
		}
		sb += String(seconds);
		sb += " GMT";
		return sb;
	}
}