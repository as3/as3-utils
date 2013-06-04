package utils.align
{
	import flash.display.DisplayObject;
	
	import utils.ratio.widthToHeight;
		
	/**
	 * Gets the position to the right of an object based on its width and x position 
	 * with an optional gap.
	 * 
	 * This is useful when you need to cause object B to appear 20px to the right of object A. 
	 * 
	 * B.x = getPositionToTheRightOf(A, 20);
	 * 
	 * @param displayObject An object to get the position under.
	 * @param gap An optional amount to space out the position under. 
	 */
	public function getPositionToTheRightOf(displayObject:DisplayObject, gap:int = 0):int {
		return displayObject.x + displayObject.width + gap;
	}
}