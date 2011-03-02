package utils.date {
	import utils.conversion.minutesToHours;
	import utils.number.addLeadingZero;



	/**
	 * Formats the difference to coordinated undefined time (UTC).
	 * @param date Date object to find the time zone offset of
	 * @param separator Character(s) that separates the hours from minutes
	 * @return Formatted time difference from UTC
	 */
	public function getFormattedDifferenceFromUTC(date:Date, separator:String = ""):String {
		var pre:String = (-date.getTimezoneOffset() < 0) ? "-" : "+";

		return pre + addLeadingZero(Math.floor(minutesToHours(date.getTimezoneOffset()))) + separator + addLeadingZero(date.getTimezoneOffset() % 60);
	}
}
