package utils.range
{
import org.flexunit.asserts.assertTrue;
import org.flexunit.asserts.fail;

public class RandomRangeDateTest
	{


		[Before]
		public function setup():void
		{

		}

		[Test]
		public function randomDateReturnsWithinRange():void
		{

            var firstDate:Date = new Date();
            firstDate.month = 5;
            var secondDate:Date = new Date();
            secondDate.month = 10;

            var date:Date = randomRangeDate(firstDate,secondDate) ;

            assertTrue(date.getTime() > firstDate.getTime() && date.getTime() < secondDate.getTime());

		}

        [Test]
		public function randomDateReturnWithinRangeWithValuesSwapped():void
		{

            var firstDate:Date = new Date();
            firstDate.month = 10;
            var secondDate:Date = new Date();
            secondDate.month = 5;

            var date:Date = randomRangeDate(firstDate,secondDate) ;

            assertTrue(date.getTime() < firstDate.getTime() && date.getTime() > secondDate.getTime());

		}

        [Test]
		public function randomDateThrowsErrorWhenDatesAreTheSame():void
		{

            var firstDate:Date = new Date();
            var secondDate:Date = new Date();

            try{
                var date:Date = randomRangeDate(firstDate,secondDate) ;
            }
            catch(e:Error) {

                assertTrue(1 == 1);
                return;

            }

            fail("Error was not thrown");


		}

	}
}