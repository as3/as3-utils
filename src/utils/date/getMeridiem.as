package utils.date
{
	/**
	   Determines if time is Ante meridiem or Post meridiem.

	   @param hours: The hour to find the meridiem of (an integer from 0 to 23).
	   @return Returns either <code>"AM"</code> or <code>"PM"</code>
	   @example
	   <code>
	   trace(DateUtil.getMeridiem(17)); // Traces PM
	   </code>
	 */
	public function getMeridiem(hours:Number):String
	{
		return (hours < 12) ? 'AM' : 'PM';
	}
}