package utils.array
{
	/**
	   Compares two Arrays and finds the first index where they differ.

	   @param first: First Array to compare to the <code>second</code>.
	   @param second: Second Array to compare to the <code>first</code>.
	   @param fromIndex: The location in the Arrays from which to start searching for a difference.
	   @return The first position/index where the Arrays differ; if Arrays are identical returns <code>-1</code>.
	   @example
	   <code>
	   var color:Array     = new Array("Red", "Blue", "Green", "Indigo", "Violet");
	   var colorsAlt:Array = new Array("Red", "Blue", "Green", "Violet");

	   trace(ArrayUtil.getIndexOfDifference(color, colorsAlt)); // Traces 3
	   </code>
	 */
	public function getIndexOfDifference(first:Array, second:Array, fromIndex:uint = 0):int
	{
		var i:int = fromIndex - 1;

		while (++i < first.length)
			if (first[i] != second[i])
				return i;

		return -1;
	}
}