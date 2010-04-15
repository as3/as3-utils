package utils.number
{
	/**
	   Determines if index is included within the collection length otherwise the index loops to the beginning or end of the range and continues.

	   @param index: Index to loop if needed.
	   @param length: The total elements in the collection.
	   @return A valid zero-based index.
	   @example
	   <code>
	   var colors:Array = new Array("Red", "Green", "Blue");

	   trace(colors[NumberUtil.loopIndex(2, colors.length)]); // Traces Blue
	   trace(colors[NumberUtil.loopIndex(4, colors.length)]); // Traces Green
	   trace(colors[NumberUtil.loopIndex(-6, colors.length)]); // Traces Red
	   </code>
	 */
	public function loopIndex(index:int, length:uint):uint
	{
		if (index < 0)
			index = length + index % length;

		if (index >= length)
			return index % length;

		return index;
	}
}