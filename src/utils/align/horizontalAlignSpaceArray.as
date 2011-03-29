package utils.align {



	/**
	 * Aligns each item in the array to the one preceding it.
	 * Uses the correlating position in the spacing arr for the spacing.
	 * @example <listing version="3.0">Alignment.hAlignSpaceArr( [ clip0, clip1, clip2], [ 0, 5, 30 ] );</listing>
	 * @param items An array of items
	 * @param spacing The array for spacing between items in pixels
	 */

	public function horizontalAlignSpaceArray(items:Array, spacing:Array):void {
		var n:int = items.length;
		for(var i:int = 1; i < n; i++) {
			items[i].x = items[(i - 1)].x + items[(i - 1)].width + spacing[i];
		}
	}
}
