package utils.align
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.collection.array;
	import org.hamcrest.object.hasProperties;
	
	import utils.object.create;

	public class AlignLeftTest
	{		
		public var targets:Array;
		
		[Before]
		public function setup():void
		{
			targets = [ create(Sprite, null, { x: 5, y: 15 })
					  , create(Sprite, null, { x: 15, y: 50 })
					  , create(Sprite, null, { x: 50, y: 5 })
					  ];
		}
		
		[Test]
		public function alignLeftShouldAlignLeftEdgesOfTargetsToLeftMostTarget():void 
		{
			assertThat(
				"alignLeft set the x of each target to 5"
				, alignLeft(targets)
				, array(hasProperties({ x: 5, y: 15 })
					, hasProperties({ x: 5, y: 50 })
					, hasProperties({ x: 5, y: 5 })
					));
		}
	}
}