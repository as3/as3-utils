package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Vertical center align object to target.
	 */
	public function yAlignCenter(item:DisplayObject, target:DisplayObject):void
	{
		item.y = int(target.height / 2 - item.height / 2);
	}
}