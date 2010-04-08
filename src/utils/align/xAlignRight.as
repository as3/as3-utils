package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Horizontal right align object to target.
	 */
	public function xAlignRight(item:DisplayObject, target:DisplayObject):void
	{
		item.x = int(target.width - item.width);
	}
}