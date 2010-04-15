package utils.align
{
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.collection.array;
	import org.hamcrest.object.hasProperties;
	
	import utils.object.create;

	public class AlignRightTest
	{		
		public var targets:Array;
		
		[Before]
		public function setup():void
		{
			targets = [ create(Square, [20], { x: 5, y: 15 })
					  , create(Square, [100], { x: 15, y: 50 })
					  , create(Square, [50], { x: 50, y: 5 })
					  ];
		}
		
		[Test]
		public function alignRightShouldAlignRightEdgesOfTargetsToRightMostTarget():void 
		{
			assertThat(
				"alignRight"
				, alignRight(targets)
				, array(hasProperties({ x: 95, y: 15 })
					, hasProperties({ x: 15, y: 50 })
					, hasProperties({ x: 65, y: 5 })
					));
		}
		
		[Test]
		public function alignRightShouldWorkForWidthlessObjects():void 
		{
			targets = [ new Point(5, 15)
					  , new Point(15, 50)
					  , new Point(50, 5)
					  ];

			assertThat(
				"alignRight"
				, alignRight(targets)
				, array(hasProperties({ x: 50, y: 15 })
					, hasProperties({ x: 50, y: 50 })
					, hasProperties({ x: 50, y: 5 })
				));
		}
	}
}

import flash.display.Shape;

internal class Square extends Shape
{
	public function Square(size:int = 50)
	{
		graphics.beginFill(0xFFFFFF, 1.0);
		graphics.drawRect(0, 0, size, size);
		graphics.endFill();
	}
	
	override public function toString():String 
	{
		return "[Square"
				+ " x=" + x 
				+ " y=" + y 
				+ " w=" + width 
				+ " h=" + height 
				+ "]";
	}
}