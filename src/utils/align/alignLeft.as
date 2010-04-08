package utils.align
{
	import flash.display.DisplayObject;

	/**
	 * Left align object to target.
	 */
	public function alignLeft(item:DisplayObject, target:DisplayObject):void
	{
		xAlignLeft(item, target);
		yAlignLeft(item, target);
	}
}