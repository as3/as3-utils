package utils.type
{
	import flexunit.framework.Assert;
	
	import utils.type.isPassedByValue;

	public class IsPassedByValueTest
	{
		[Test]
		public function testIsPassedByValue():void {
			Assert.assertTrue("uint is passed by value", isPassedByValue(uint(5)));
			Assert.assertTrue("int is passed by value", isPassedByValue(int(5)));
			Assert.assertTrue("Number is passed by value", isPassedByValue(5.5));
			Assert.assertTrue("String is passed by value", isPassedByValue("foo"));
			Assert.assertTrue("Boolean is passed by value", isPassedByValue(true));
			
			Assert.assertFalse("null values don't indicate the type of the variable container.", isPassedByValue(null));
			
			var xml:XML = 
				        <body>
				            <p>hello</p>
				        </body>;
			Assert.assertFalse("XML is not passed by value even though it's a primitive", isPassedByValue(xml));
		}
		
	}
}