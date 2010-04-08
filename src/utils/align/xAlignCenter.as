package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Horizontal center align object to target.
	 */
	public function xAlignCenter(item:DisplayObject, target:DisplayObject):void
	{
		item.x = int(target.width / 2 - item.width / 2);
	}
}