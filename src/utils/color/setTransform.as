package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.ColorTransform;

	/**
	 * Set ColorTransform information for a DisplayObject.
	 *
	 * <p>The colorTransformObject parameter is a generic object that you create from the new Object constructor. It has parameters specifying the percentage and
	 * offset values for the red, green, blue, and alpha (transparency) components of a color, entered in the format 0xRRGGBBAA.</p>
	 *
	 * @param transformObject An object created with the new Object constructor. This instance of the Object class must have the following properties
	 * that specify color transform values: ra, rb, ga, gb, ba, bb, aa, ab. These properties are explained in the above summary for the setTransform() method.
	 */
	public function setTransform(src:DisplayObject, transformObject:Object):void
	{
		var t:Object = { ra: 100, rb: 0, ga: 100, gb: 0, ba: 100, bb: 0, aa: 100, ab: 0 };
		for (var p:String in transformObject)
		{
			t[p] = transformObject[p];
		}
		var ct:ColorTransform = new ColorTransform(t['ra'] * 0.01, t['ga'] * 0.01, t['ba'] * 0.01, t['aa'] * 0.01, t['rb'], t['gb'], t['bb'], t['ab']);
		src.transform.colorTransform = ct;
	}
}