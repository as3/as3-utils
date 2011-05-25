package utils.number
{
	import flash.utils.Endian;
	
	import flexunit.framework.Assert;
	
	import utils.number.toHex;
	import utils.string.endsWith;

	public class ToHexTest
	{
		[Test]
		public function testToHex ():void {
			Assert.assertEquals("Big endian", "0xFC00", toHex(0xFC00, 1, true, Endian.BIG_ENDIAN));
			Assert.assertEquals("Little endian", "0x00FC", toHex(0xFC00, 1, true, Endian.LITTLE_ENDIAN));
			Assert.assertEquals("Add leading 0 if there aren't enough numbers to make a byte", "0x452301", toHex(0x12345, 1, true, Endian.LITTLE_ENDIAN));
			Assert.assertEquals("Converting from digital number to hex produces hex string", "0xFF", toHex(255));
			Assert.assertEquals("Convert 0 to 0x0", "0x0", toHex(0));
			Assert.assertEquals("Floats round down", "0x1", toHex(1.6));
			Assert.assertEquals("Converting from hex number to hex produces hex string", "0xABCDEF", toHex(0xABCDEF));
			Assert.assertEquals("Hide '0x'", "ABC", toHex(0xABC, 1, false));
			Assert.assertEquals("Leading 0's", "0x0033CC", toHex(0x0033CC, 6));
			// todo: test endian param.
		}
	}
}