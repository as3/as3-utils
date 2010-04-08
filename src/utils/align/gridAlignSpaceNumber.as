package utils.align
{
	/**
	 * Aligns the items in the array in a grid based on the number of rows and columns.
	 * Uses the same spacing for all.
	 *
	 * @example <listing version="3.0">Alignment.hAlignSpaceNum( [ clip0, clip1, clip2], 10 );</listing>
	 *
	 * @param items An array of items
	 * @param rows The number of rows
	 * @param cols The number of columns
	 * @param spacing The spacing between items in pixels
	 */
	public function gridAlignSpaceNumber(items:Array, rows:Number, cols:Number, spacing:Number = 0):void
	{
		var col:Number = 0;
		var row:Number = 1;
		var yPos:Number = 0;
		var xPos:Number = 0;
		var maxHeightCurrentRow:Number = 0;
		var maxHeightPreviousRow:Number = 0;
		var n:int = items.length;

		for (var i:Number = 0; i < n; i++)
		{
			if (row <= rows)
			{
				items[i].x = xPos;

				if (col == (cols - 1))
				{
					xPos = 0;
					row++;
				}
				else
				{
					xPos += items[(i)].width + spacing;
				}

				if (col == cols)
				{
					col = 0;

					/*
					 * Get the max item height from previous row
					 */
					maxHeightPreviousRow = maxHeightCurrentRow;
					maxHeightCurrentRow = items[(i)].height;

					yPos += maxHeightPreviousRow + spacing;
				}
				else
				{
					/*
					 * Calculate the max item height from previous row
					 */
					maxHeightCurrentRow = Math.max(maxHeightCurrentRow, items[(i)].height);
				}
				items[i].y = yPos;

				col++;
			}
			else
			{
				break;
			}
		}
	}
}