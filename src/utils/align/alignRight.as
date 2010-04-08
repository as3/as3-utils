package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Right align object to target.
	 */
	public function alignRight(item:DisplayObject, target:DisplayObject):void
	{
		xAlignRight(item, target);
		yAlignRight(item, target);
	}
}