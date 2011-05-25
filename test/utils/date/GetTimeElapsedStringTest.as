package utils.date
{
	import flexunit.framework.Assert;
	
	import utils.date.getTimeElapsedString;
	
	/**
	 * DateFormatterTest
	 *
	 * @author Mims H. Wright
	 */
	public class GetTimeElapsedStringTest
	{
		[Test]
		public function testGetTimeElapsedString():void {
			
			// create a custom date for now to ensure that subtracting time from 
			// each field will create a valid date 
			var now:Date = new Date(2010, 11, 30, 12, 50, 50);
			
			var secondsAgo:Date = new Date(now.fullYear, now.month, now.date, now.hours, now.minutes, now.seconds - 5);
			var minutesAgo:Date = new Date(now.fullYear, now.month, now.date, now.hours, now.minutes - 5);
			var hoursAgo:Date = new Date(now.fullYear, now.month, now.date, now.hours - 5);
			var yesterday:Date = new Date(now.fullYear, now.month, now.date - 1);
			var daysAgo:Date = new Date(now.fullYear, now.month, now.date - 5);
			var weeksAgo:Date = new Date(now.fullYear, now.month, now.date - 8);
			var monthsAgo:Date = new Date(now.fullYear, now.month - 5, now.date );
			var yearsAgo:Date = new Date(now.fullYear - 2, now.month, now.date);
			var future:Date = new Date(now.fullYear + 1, now.month, now.date);
			
			Assert.assertEquals("just now", getTimeElapsedString(secondsAgo, now));
			Assert.assertEquals("5 minutes ago", getTimeElapsedString(minutesAgo, now));
			Assert.assertEquals("5 hours ago", getTimeElapsedString(hoursAgo, now));
			Assert.assertEquals("yesterday", getTimeElapsedString(yesterday, now));
			Assert.assertEquals("5 days ago", getTimeElapsedString(daysAgo, now));
			Assert.assertEquals("1 week ago", getTimeElapsedString(weeksAgo, now));
			Assert.assertEquals("5 months ago", getTimeElapsedString(monthsAgo, now));
			Assert.assertEquals("more than a year ago", getTimeElapsedString(yearsAgo, now));
			Assert.assertEquals("in the future", getTimeElapsedString(future, now));
		}
	}
}