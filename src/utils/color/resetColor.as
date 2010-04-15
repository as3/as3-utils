package utils.color
{
	import flash.display.DisplayObject;

	/**
	 * Reset the color of the DisplayObject to its original view (pre-ColorTransformed).
	 */
	public function resetColor(src:DisplayObject):void
	{
		setTransform(src, { ra: 100, ga: 100, ba: 100, rb: 0, gb: 0, bb: 0 });
	}
}