package utils.align
{
	/**
	 * Aligns each item horizontally to the one above it.
	 * Uses no spacing.
	 *
	 * @example <listing version="3.0">Alignment.hAlignNoSpace( [ clip0, clip1, clip2] );</listing>
	 *
	 * @param items An array of items
	 */
	public function horizontalAlignNoSpace(items:Array):void
	{
		var n:int = items.length;
		for (var i:int = 1; i < n; i++)
		{
			items[i].x = items[(i - 1)].y + items[(i - 1)].width;
		}
	}
}