package utils.date
{
import org.flexunit.asserts.assertTrue;
import org.flexunit.asserts.fail;
import utils.date.getPreviousDay;

public class GetPrevDayTest
	{
		[Test]
		public function returnsPrevDay():void
		{

            var jan14:Date = new Date(2010, 0, 14);
            var jan15:Date =  new Date(2010, 0, 15);

            assertTrue(getPreviousDay(jan15).getTime() == jan14.getTime());
		}
		
		[Test]
		public function passingNoDateUsesToday():void
		{
			var today:Date = new Date();
			var yesterday:Date = getPreviousDay(today);

            assertTrue(getPreviousDay().getTime() == yesterday.getTime());
		}
		
		[Test]
		public function wrapsToPrevMonth():void
		{
			var startOfMonth:Date = new Date(2010, 0, 1);
			
            assertTrue(getPreviousDay(startOfMonth).getMonth() == 11);
		}
		
		[Test]
		public function wrapsToPrevYear():void
		{
			var startOfYear:Date = new Date(2011, 0, 1);
			
            assertTrue(getPreviousDay(startOfYear).getFullYear() == 2010);
		}

	}
}