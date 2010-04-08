package utils.display
{
	import flash.display.DisplayObject;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.geom.Transform;

	/**
	 * Determines the full bounds of the display object regardless of masking elements.
	 * @param    displayObject    The display object to analyze.
	 * @return    the display object dimensions.
	 */
	public function getFullBounds(displayObject:DisplayObject):Rectangle
	{
		var bounds:Rectangle, transform:Transform, toGlobalMatrix:Matrix, currentMatrix:Matrix;

		transform = displayObject.transform;
		currentMatrix = transform.matrix;
		toGlobalMatrix = transform.concatenatedMatrix;
		toGlobalMatrix.invert();
		transform.matrix = toGlobalMatrix;

		bounds = transform.pixelBounds.clone();

		transform.matrix = currentMatrix;

		return bounds;
	}
}