/**
 * User: John Lindquist
 * Date: 3/16/11
 * Time: 11:14 AM
 */
package utils.date.calendar
{

import org.hamcrest.assertThat;

import org.hamcrest.object.equalTo;

import utils.date.Calendar;

public class CalendarTests
	{
		[Test]
		public function now_should_be_the_current_time():void
		{
            var calendar:Calendar = new Calendar();

			assertThat(calendar.now.toString(), equalTo(new Date().toString()));
		}
		

	}
}