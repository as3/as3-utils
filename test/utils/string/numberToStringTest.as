package utils.string
{
	import org.flexunit.asserts.*;

	public class numberToStringTest
	{
		[Before]
		public function setup():void
		{
			
		}
		
		[Test]
		public function numberToStringTestPositiveNumbers():void {
			assertEquals("eleven", numberToString(11));
			assertEquals("ten thousand", numberToString(10000));
			assertEquals("one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety", numberToString(1234567890));
		}
		
		[Test]
		public function numberToStringTestDecimalNumbers():void {
			assertEquals("point one two three four five", numberToString(0.12345));
			assertEquals("one hundred one point zero zero one", numberToString(101.001));
		}

		[Test]
		public function numberToStringTestNegativeNumbers():void {
			assertEquals("negative one", numberToString(-1));
		}
		
		[Test]
		public function numberToStringTestZero():void {
			assertEquals("zero", numberToString(0));
		}

		[Test]
		public function numberToStringTestNaN():void {
			assertEquals("not a number", numberToString(NaN));
			assertEquals("not a number", numberToString(undefined));
		}
		
	}
}