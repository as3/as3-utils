package utils.date
{
import org.flexunit.asserts.assertTrue;
import org.flexunit.asserts.fail;
import utils.date.getNextDay;

public class GetNextDayTest
	{
		[Test]
		public function returnsNextDay():void
		{

            var jan14:Date = new Date(2010, 0, 14);
            var jan15:Date =  new Date(2010, 0, 15);

            assertTrue(getNextDay(jan14).getTime() == jan15.getTime());
		}
		
		[Test]
		public function passingNoDateUsesToday():void
		{
			var today:Date = new Date();
			var tomorrow:Date = getNextDay(today);

            assertTrue(getNextDay().getTime() == tomorrow.getTime());
		}
		
		[Test]
		public function wrapsToNextMonth():void
		{
			var endOfMonth:Date = new Date(2010, 0, 31);
			
            assertTrue(getNextDay(endOfMonth).getMonth() == 1);
		}
		[Test]
		public function wrapsToNextMonthForFebruary():void
		{
			var endOfFeb:Date = new Date(2011, 1, 28);
			
            assertTrue(getNextDay(endOfFeb).getMonth() == 2);
		}
		[Test]
		public function doesntWrapToNextMonthForFebruaryInLeapYear():void
		{
			var endOfFeb:Date = new Date(2012, 1, 28);
			
            assertTrue(getNextDay(endOfFeb).getMonth() == 1);
		}
		
		[Test]
		public function wrapsToNextYear():void
		{
			var endOfYear:Date = new Date(2010, 11, 31);
			
            assertTrue(getNextDay(endOfYear).getFullYear() == 2011);
		}

	}
}