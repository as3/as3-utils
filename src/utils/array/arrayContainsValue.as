package utils.array
{
	/**
	 *       Determines whether the specified array contains the specified value.
	 *
	 *       @param arr The array that will be checked for the specified value.
	 *
	 *       @param value The object which will be searched for within the array
	 *
	 *       @return True if the array contains the value, False if it does not.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function arrayContainsValue(arr:Array, value:Object):Boolean
	{
		return (arr.indexOf(value) != -1);
	}
}