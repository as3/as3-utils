package utils.array
{
	/**
	   Returns the first element that is compatible with a specific data type, clazz, or interface.

	   @param inArray: Array to search for an element of a specific type.
	   @param type: The type to compare the elements to.
	   @return Returns all the matched elements.
	 */
	public function getItemByType(inArray:Array, type:Class):*
	{
		for each (var item:* in inArray)
			if (item is type)
				return item;

		return null;
	}

}