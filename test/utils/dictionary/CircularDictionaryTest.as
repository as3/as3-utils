package utils.dictionary
{
	import flexunit.framework.Assert;
	
	import utils.dictionary.CircularDictionary;
	
	public class CircularDictionaryTest
	{
		[Test]
		public function testAddAndRemovePair():void {
			var a:Object = {foo:"bar"};
			var b:int = 42;
			
			var dict:CircularDictionary = new CircularDictionary();
			dict.addPair(a,b);
			Assert.assertEquals(a, dict.getCounterpartTo(b));
			Assert.assertEquals(b, dict.getCounterpartTo(a));
			
			var result:* = dict.removePair(a);
			Assert.assertUndefined(dict.getCounterpartTo(a), dict.getCounterpartTo(b));
			Assert.assertEquals(result, b);
		}		
	}
}