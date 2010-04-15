package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.ColorTransform;

	/**
	 * Returns the transform value set by the last setTransform() call.
	 * @return An object containing the current offset and percentage values for the color.
	 */
	public function getTransform(src:DisplayObject):Object
	{
		var ct:ColorTransform = src.transform.colorTransform;
		return { ra: ct.redMultiplier * 100, rb: ct.redOffset, ga: ct.greenMultiplier * 100, gb: ct.greenOffset, ba: ct.blueMultiplier * 100, bb: ct.blueOffset, aa: ct.alphaMultiplier * 100,
				ab: ct.alphaOffset };
	}
}