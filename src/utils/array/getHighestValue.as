package utils.array
{
	/**
	   Finds the highest value in <code>inArray</code>.

	   @param inArray: Array composed only of numbers.
	   @return The highest value in <code>inArray</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(2, 1, 5, 4, 3);
	   trace("The highest value is: " + ArrayUtil.getHighestValue(numberArray));
	   </code>
	 */
	public function getHighestValue(inArray:Array):Number
	{
		return inArray[inArray.sort(16 | 8)[inArray.length - 1]];
	}
}