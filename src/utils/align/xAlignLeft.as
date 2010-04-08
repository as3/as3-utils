package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Horizontal left align object to target.
	 */
	public function xAlignLeft(item:DisplayObject, target:DisplayObject):void
	{
		item.x = int(target.x);
	}
}