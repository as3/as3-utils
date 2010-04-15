package utils.array
{
	/**
	   Retains only the specified items in an Array.

	   @param tarArray: Array to remove non specified items from.
	   @param items: Array of elements to keep.
	   @return Returns <code>true</code> if the Array was changed as a result of the call; otherwise <code>false</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 7, 7, 7, 4, 5);
	   ArrayUtil.retainItems(numberArray, new Array(2, 4));
	   trace(numberArray);
	   </code>
	 */
	public function retainItems(tarArray:Array, items:Array):Boolean
	{
		var removed:Boolean = false;
		var l:uint = tarArray.length;

		while (l--)
		{
			if (items.indexOf(tarArray[l]) == -1)
			{
				tarArray.splice(l, 1);
				removed = true;
			}
		}

		return removed;
	}
}