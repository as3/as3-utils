package utils.array
{
	/**
	   Modifies original Array by adding all the elements from another Array at a specified position.

	   @param tarArray: Array to add elements to.
	   @param items: Array of elements to add.
	   @param index: Position where the elements should be added.
	   @return Returns <code>true</code> if the Array was changed as a result of the call; otherwise <code>false</code>.
	   @example
	   <listing version="3.0">
	   var alphabet:Array = new Array("a", "d", "e");
	   var parts:Array    = new Array("b", "c");

	   ArrayUtil.addItemsAt(alphabet, parts, 1);

	   trace(alphabet);
	   </listing>
	 */
	public function addItemsAt(tarArray:Array, items:Array, index:int = 0x7FFFFFFF):Boolean
	{
		if (items.length == 0)
			return false;

		var args:Array = items.concat();
		args.splice(0, 0, index, 0);

		tarArray.splice.apply(null, args);

		return true;
	}
}