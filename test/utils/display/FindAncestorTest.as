package flexUnitTests
{
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertNull;
	
	import utils.display.findAncestor;
	import utils.display.findAncestorWithType;

	public class FindAncestorTest
	{		
		[Test]
		public function findAncestorTest():void
		{
			var a:MovieClip = new MovieClip();
			var b:Sprite = new Sprite();
			var c:Shape = new Shape();
			
			var d:Sprite = new Sprite(); // not in chain
			
			a.addChild(b);
			b.addChild(c);
			
			assertEquals(findAncestor(c, a), a);
			assertEquals(findAncestor(c, b), b);
			assertEquals(findAncestor(c, c), c);
			
			assertNull(findAncestor(a, c));
			assertNull(findAncestor(c, d));
			
			assertEquals(findAncestorWithType(c, MovieClip), a);
			assertEquals(findAncestorWithType(c, Sprite), b);

			assertNull(findAncestorWithType(c, Shape));
			
		}
		
	}
}