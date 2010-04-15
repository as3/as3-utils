package utils.array
{
	/**
	   Averages the values in <code>inArray</code>.

	   @param inArray: Array composed only of numbers.
	   @return The average of all numbers in the <code>inArray</code>.
	   @example
	   <listing version="3.0">
	   var numberArray:Array = new Array(2, 3, 8, 3);
	   trace("Average is: " + ArrayUtil.average(numberArray));
	   </listing>
	 */
	public function average(inArray:Array):Number
	{
		if (inArray.length == 0)
			return 0;

		return sum(inArray) / inArray.length;
	}
}