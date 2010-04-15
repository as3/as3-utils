package utils.array
{
	/**
	   Modifies original Array by removing all items that are identical to the specified item.

	   @param tarArray: Array to remove passed <code>item</code>.
	   @param item: Element to remove.
	   @return The amount of removed elements that matched <code>item</code>, if none found returns <code>0</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 7, 7, 7, 4, 5);
	   trace("Removed " + ArrayUtil.removeItem(numberArray, 7) + " items.");
	   trace(numberArray);
	   </code>
	 */
	public function removeItem(tarArray:Array, item:*):uint
	{
		var i:int = tarArray.indexOf(item);
		var f:uint = 0;

		while (i != -1)
		{
			tarArray.splice(i, 1);

			i = tarArray.indexOf(item, i);

			f++;
		}

		return f;
	}
}