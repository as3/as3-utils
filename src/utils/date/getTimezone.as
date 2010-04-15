package utils.date
{
	/**
	   Determines the time zone of the user from a Date object.

	   @param d: Date object to find the time zone of.
	   @return Returns the time zone abbreviation.
	   @example
	   <code>
	   trace(DateUtil.getTimezone(new Date()));
	   </code>
	 */
	public function getTimezone(d:Date):String
	{
		var timeZones:Array =
			new Array('IDLW', 'NT', 'HST', 'AKST', 'PST', 'MST', 'CST', 'EST', 'AST', 'ADT', 'AT', 'WAT', 'GMT', 'CET', 'EET', 'MSK', 'ZP4', 'ZP5', 'ZP6', 'WAST', 'WST', 'JST', 'AEST', 'AEDT',
					  'NZST');
		var hour:uint = Math.round(12 + -(d.getTimezoneOffset() / 60));

		if (isDaylightSavings(d))
			hour--;

		return timeZones[hour];
	}
}