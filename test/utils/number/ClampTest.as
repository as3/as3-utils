package utils.number
{
	import flexunit.framework.Assert;
	
	import utils.number.clamp;

	public class ClampTest
	{
		[Test]
		public function testClamp():void {
			var low:int = 0;
			var high:int = 100;
			
			Assert.assertEquals("Values between low and high are passed thru.", clamp(50, low, high), 50);
			Assert.assertEquals("Values lower than low value are limited to the low value.", clamp(low - 100, low, high), low);
			Assert.assertEquals("Values higher than the high value are limited to the high value.", clamp(high + 100, low, high), high);
			Assert.assertEquals("If any values are NaN, return NaN.", clamp(5, NaN, high), NaN);
		}
	}
}