package utils.date
{
	/**
	 * Returns a date string formatted according to W3CDTF.
	 *
	 * @param d
	 * @param includeMilliseconds Determines whether to include the
	 * milliseconds value (if any) in the formatted string.
	 *
	 * @returns String
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @tiptext
	 *
	 * @see http://www.w3.org/TR/NOTE-datetime
	 */
	public function toW3CDTF(d:Date, includeMilliseconds:Boolean = false):String
	{
		var date:Number = d.getUTCDate();
		var month:Number = d.getUTCMonth();
		var hours:Number = d.getUTCHours();
		var minutes:Number = d.getUTCMinutes();
		var seconds:Number = d.getUTCSeconds();
		var milliseconds:Number = d.getUTCMilliseconds();
		var sb:String = new String();

		sb += String(d.getUTCFullYear());
		sb += "-";

		//thanks to "dom" who sent in a fix for the line below
		if (month + 1 < 10)
		{
			sb += "0";
		}
		sb += String(month + 1);
		sb += "-";
		if (date < 10)
		{
			sb += "0";
		}
		sb += String(date);
		sb += "T";
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
		if (includeMilliseconds && milliseconds > 0)
		{
			sb += ".";
			sb += String(milliseconds);
		}
		sb += "-00:00";
		return sb;
	}


}