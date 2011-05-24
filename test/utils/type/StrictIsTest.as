package utils.type
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	import flexunit.framework.Assert;
	
	import utils.type.strictIs;

	public class StrictIsTest
	{
		[Test]
		public function testStrictIs():void {
			var s:Sprite = new Sprite();
			var m:MovieClip = new MovieClip();
			
			Assert.assertTrue("Sprite instance is Sprite", s is Sprite);
			Assert.assertTrue("MovieClip instance is Sprite", m is Sprite);
			Assert.assertFalse("Sprite instance is not MovieClip", s is MovieClip);

			Assert.assertTrue("Sprite instance is strictly Sprite", strictIs(s, Sprite));
			Assert.assertFalse("MovieClip instance is strictly not a Sprite", strictIs(m, Sprite));
			Assert.assertFalse("Sprite instance is strictly not a MovieClip", strictIs(s, MovieClip));
		}
		
	}
}