package utils.array
{
	/**
	 *       Create a new array that only contains unique instances of objects
	 *       in the specified array.
	 *
	 *       Basically, this can be used to remove duplication object instances
	 *       from an array
	 *
	 *       @param arr The array which contains the values that will be used to
	 *       create the new array that contains no duplicate values.
	 *
	 *       @return A new array which only contains unique items from the specified
	 *       array.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function createUniqueCopy(a:Array):Array
	{
		var newArray:Array = new Array();

		var len:Number = a.length;
		var item:Object;

		for (var i:uint = 0; i < len; ++i)
		{
			item = a[i];

			if (arrayContainsValue(newArray, item))
			{
				continue;
			}

			newArray.push(item);
		}

		return newArray;
	}
}