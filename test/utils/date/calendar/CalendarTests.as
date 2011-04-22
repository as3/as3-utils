/**
 * User: John Lindquist
 * Date: 3/16/11
 * Time: 11:14 AM
 */
package utils.date.calendar
{
	import org.flexunit.asserts.assertEquals;
	
	import utils.date.Calendar;

	public class CalendarTests
	{
		[Test]
		public function now_should_be_the_current_time():void
		{
			assertEquals(new Calendar().now.toString(), new Date().toString());
		}
		
		[Test]
		public function today_should_be():void
		{
			var today:Date = new Calendar().today;
			var now:Date = new Date();
			assertEquals(today.year, now.year);
			assertEquals(today.month, now.month);
			assertEquals(today.date, now.date);
		}
	}
}