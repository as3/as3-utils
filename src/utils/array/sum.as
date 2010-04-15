package utils.array
{
	/**
	   Adds all items in <code>inArray</code> and returns the value.

	   @param inArray: Array composed only of numbers.
	   @return The total of all numbers in <code>inArray</code> added.
	   @example
	   <code>
	   var numberArray:Array = new Array(2, 3);
	   trace("Total is: " + ArrayUtil.sum(numberArray));
	   </code>
	 */
	public function sum(inArray:Array):Number
	{
		var t:Number = 0;
		var l:uint = inArray.length;

		while (l--)
			t += inArray[l];

		return t;
	}
}