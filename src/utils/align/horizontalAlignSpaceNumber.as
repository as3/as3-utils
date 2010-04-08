package utils.align
{
	/**
	 * Aligns the items in the array horizontally to each the one preceding it in the array.
	 * Uses the same spacing for all.
	 *
	 * @example <listing version="3.0">Alignment.hAlignSpaceNum( [ clip0, clip1, clip2], 10 );</listing>
	 *
	 * @param items An array of items
	 * @param spacing The spacing between items in pixels
	 */
	public function horizontalAlignSpaceNumber(items:Array, spacing:Number):void
	{
		var n:int = items.length;
		for (var i:int = 1; i < n; i++)
		{
			items[i].x = items[(i - 1)].x + items[(i - 1)].width + spacing;
		}
	}
}