package utils.array
{
	/**
	   Finds out how many instances of <code>item</code> Array contains.

	   @param inArray: Array to search for <code>item</code> in.
	   @param item: Object to find.
	   @return The amount of <code>item</code>'s found; if none were found returns <code>0</code>.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 7, 7, 7, 4, 5);
	   trace("numberArray contains " + ArrayUtil.contains(numberArray, 7) + " 7's.");
	   </code>
	 */
	public function contains(inArray:Array, item:*):uint
	{
		var i:int = inArray.indexOf(item, 0);
		var t:uint = 0;

		while (i != -1)
		{
			i = inArray.indexOf(item, i + 1);
			t++;
		}

		return t;
	}
}