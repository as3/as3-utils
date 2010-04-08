package utils.align
{
	import flash.text.TextField;

	/**
	 * Aligns the items in the array vertically to each the one preceding it in the array.
	 * Uses the same spacing for all.
	 *
	 * @example <listing version="3.0">Alignment.valignSpaceNum( [ clip0, clip1, clip2], 10 );</listing>
	 *
	 * @param items An array of items
	 * @param spacing The spacing between items in pixels
	 */
	public function verticalAlignSpaceNumber(items:Array, spacing:Number):void
	{
		var n:int = items.length;
		for (var i:int = 1; i < n; i++)
		{
			if (items[i - 1] is TextField)
			{
				items[i].y = int(items[(i - 1)].y + items[(i - 1)].textHeight + spacing);
			}
			else
			{
				items[i].y = int(items[(i - 1)].y + items[(i - 1)].height + spacing);
			}
		}
	}
}