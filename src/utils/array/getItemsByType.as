package utils.array
{
	/**
	   Returns every element that is compatible with a specific data type, clazz, or interface.

	   @param inArray: Array to search for elements of a specific type.
	   @param type: The type to compare the elements to.
	   @return Returns all the matched elements.
	 */
	public function getItemsByType(inArray:Array, type:Class):Array
	{
		var t:Array = new Array();

		for each (var item:* in inArray)
			if (item is type)
				t.push(item);

		return t;
	}
}