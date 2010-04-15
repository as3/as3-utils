package utils.array
{
	/**
	   Determines if Array contains all items.

	   @param inArray: Array to search for <code>items</code> in.
	   @param items: Array of elements to search for.
	   @return Returns <code>true</code> if <code>inArray</code> contains all elements of <code>items</code>; otherwise <code>false</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 4, 5);
	   trace(ArrayUtil.containsAll(numberArray, new Array(1, 3, 5)));
	   </code>
	 */
	public function containsAll(inArray:Array, items:Array):Boolean
	{
		var l:uint = items.length;

		while (l--)
			if (inArray.indexOf(items[l]) == -1)
				return false;

		return true;
	}
}