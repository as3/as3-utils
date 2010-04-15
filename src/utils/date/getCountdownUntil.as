package utils.date
{
	import utils.conversion.daysToHours;
	import utils.conversion.hoursToMinutes;
	import utils.conversion.millisecondsToDays;
	import utils.conversion.minutesToSeconds;
	import utils.conversion.secondsToMilliseconds;

	/**
	   Determines the time remaining until a certain date.

	   @param startDate: The starting date.
	   @param endDate: The ending date.
	   @return Returns an Object with the properties <code>days</code>, <code>hours</code>, <code>minutes</code>, <code>seconds</code> and <code>milliseconds</code> defined as numbers.
	   @example
	   <code>
	   var countdown:Object = DateUtil.getCountdownUntil(new Date(2006, 11, 31, 21, 36), new Date(2007, 0, 1));
	   trace("There are " + countdown.hours + " hours and " + countdown.minutes + " minutes until the new year!");
	   </code>
	 */
	public function getCountdownUntil(startDate:Date, endDate:Date):Object
	{
		var daysUntil:Number = millisecondsToDays(getTimeBetween(startDate, endDate));
		var hoursUntil:Number = daysToHours(daysUntil % 1);
		var minsUntil:Number = hoursToMinutes(hoursUntil % 1);
		var secsUntil:Number = minutesToSeconds(minsUntil % 1);
		var milliUntil:Number = secondsToMilliseconds(secsUntil % 1);

		return {
				days: int(daysUntil),
				hours: int(hoursUntil),
				minutes: int(minsUntil),
				seconds: int(secsUntil),
				milliseconds: int(milliUntil)};
	}
}