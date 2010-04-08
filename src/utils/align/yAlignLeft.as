package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Vertical left  align object to target.
	 */
	public function yAlignLeft(item:DisplayObject, target:DisplayObject):void
	{
		item.y = int(target.y);
	}
}