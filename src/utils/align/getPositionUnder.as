package utils.align {
	import flash.display.DisplayObject;

	/**
	 * Gets the position under an object based on its height and y position with an optional gap.
	 * 
	 * This is useful when you need to cause object B to appear 20px below object A. 
	 * 
	 * B.y = getPositionUnder(A, 20);
	 * 
	 * @param displayObject An object to get the position under.
	 * @param gap An optional amount to space out the position under. 
	 */
	public function getPositionUnder(displayObject:DisplayObject, gap:int = 0):int {
		return displayObject.y + displayObject.height + gap;
	}
}