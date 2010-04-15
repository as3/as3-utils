package utils.array
{
	/**
	   Determines if Array <code>inArray</code> contains any element of Array <code>items</code>.

	   @param inArray: Array to search for <code>items</code> in.
	   @param items: Array of elements to search for.
	   @return Returns <code>true</code> if <code>inArray</code> contains any element of <code>items</code>; otherwise <code>false</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 4, 5);
	   trace(ArrayUtil.containsAny(numberArray, new Array(9, 3, 6)));
	   </code>
	 */
	public function containsAny(inArray:Array, items:Array):Boolean
	{
		var l:uint = items.length;

		while (l--)
			if (inArray.indexOf(items[l]) > -1)
				return true;

		return false;
	}
}