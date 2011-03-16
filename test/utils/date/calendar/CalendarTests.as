/**
 * User: John Lindquist
 * Date: 3/16/11
 * Time: 11:14 AM
 */
package utils.date.calendar
{
	import org.flexunit.asserts.assertEquals;

	public class CalendarTests
	{
		[Test]
		public function now_should_be_the_current_time():void
		{
			assertEquals(now.toString(), new Date().toString());
		}
		
		[Test]
		public function today_should_be():void
		{
			assertEquals(today.toString(), now.toString());
		}
	}
}