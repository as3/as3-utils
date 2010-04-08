package utils.align
{
	/**
	 * Aligns each item vertically to the one above it.
	 * Uses no spacing.
	 *
	 * @example <listing version="3.0">Alignment.valignNoSpace( [ clip0, clip1, clip2] );</listing>
	 *
	 * @param items An array of items
	 */
	public function verticalAlignNoSpace(items:Array):void
	{
		var n:int = items.length;
		for (var i:int = 1; i < n; i++)
		{
			items[i].y = int(items[(i - 1)].y + items[(i - 1)].height);
		}
	}
}