package utils.align
{
	/**
	 * Convienent vertical allign method with optional alignment argument
	 *
	 * @example <listing version="3.0">Alignment.vAlign( [ clip0, clip1, clip2], 10 );</listing>
	 *
	 * @param items An array of items
	 * @param optional spacing The spacing between items in pixels as either a number or array or blank
	 */

	public function verticalAlign(items:Array, ...spacingValues):void
	{
		if (spacingValues.length > 0)
		{
			if (spacingValues[0] is Array)
				verticalAlignSpaceArray(items, spacingValues[0]);
			if (spacingValues[0] is Number)
				verticalAlignSpaceNumber(items, spacingValues[0]);
		}
		else verticalAlignNoSpace(items);
	}
}