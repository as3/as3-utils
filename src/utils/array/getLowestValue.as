package utils.array
{
	/**
	   Finds the lowest value in <code>inArray</code>.

	   @param inArray: Array composed only of numbers.
	   @return The lowest value in <code>inArray</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(2, 1, 5, 4, 3);
	   trace("The lowest value is: " + ArrayUtil.getLowestValue(numberArray));
	   </code>
	 */
	public function getLowestValue(inArray:Array):Number
	{
		return inArray[inArray.sort(16 | 8)[0]];
	}
}