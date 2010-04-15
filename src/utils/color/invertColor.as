package utils.color
{
	import flash.display.DisplayObject;

	/**
	 * Inverts the color of the DisplayObject.
	 */
	public function invertColor(src:DisplayObject):void
	{
		var t:Object = getTransform(src);
		setTransform(src, {
				ra: -t['ra'], ga: -t['ga'], ba: -t['ba'], rb: 255 - t['rb'], gb: 255 - t['gb'], bb: 255 - t['bb']
			});
	}
}