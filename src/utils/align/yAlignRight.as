package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Vertical right align object to target.
	 */
	public function yAlignRight(item:DisplayObject, target:DisplayObject):void
	{
		item.y = int(target.height - item.height);
	}
}