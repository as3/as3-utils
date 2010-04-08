package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.ColorTransform;

	/**
	 * Set the (A)RGB <i>hexadecimal</i> color value of a DisplayObject using ColorTransform.
	 */
	public function setColor(src:DisplayObject, hex:uint):void
	{
		var ct:ColorTransform = src.transform.colorTransform;
		ct.color = hex;
		src.transform.colorTransform = ct;
	}
}