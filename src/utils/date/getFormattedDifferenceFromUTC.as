package utils.date {
	import utils.conversion.minutesToHours;
	import utils.number.addLeadingZeroes;



	/**
	 * Formats the difference to coordinated undefined time (UTC).
	 * @param date Date object to find the time zone offset of
	 * @param separator Character(s) that separates the hours from minutes
	 * @return Formatted time difference from UTC
	 */
	public function getFormattedDifferenceFromUTC(date:Date, separator:String = ""):String {
		var pre:String = (-date.getTimezoneOffset() < 0) ? "-" : "+";

		return pre + addLeadingZeroes(Math.floor(minutesToHours(date.getTimezoneOffset()))) + separator + addLeadingZeroes(date.getTimezoneOffset() % 60);
	}
}
