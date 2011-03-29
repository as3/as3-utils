package utils.align {
	import flash.display.DisplayObject;



	/**
	 * Center align object to target.
	 */
	public function alignCenter(item:DisplayObject, target:DisplayObject):void {
		xAlignCenter(item, target);
		yAlignCenter(item, target);
	}
}
