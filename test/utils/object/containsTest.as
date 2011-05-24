package utils.object
{
	import flexunit.framework.Assert;
	import utils.object.contains;

	public class containsTest
	{		
		[Test]
		public function testContains():void {
			var o:Object = {foo:"bar", baz:42};
			var p:Object = {foo:o};
			
			Assert.assertTrue("Object contains 'bar'", contains(o, "bar"));
			Assert.assertFalse("Doesn't check property names", contains(o, "foo"));
			Assert.assertTrue("Object contains other objects", contains(p, o));
		}
		
	}
}