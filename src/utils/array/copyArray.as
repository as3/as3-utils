package utils.array
{
	/**
	 *       Creates a copy of the specified array.
	 *
	 *       Note that the array returned is a new array but the items within the
	 *       array are not copies of the items in the original array (but rather
	 *       references to the same items)
	 *
	 *       @param arr The array that will be copies
	 *
	 *       @return A new array which contains the same items as the array passed
	 *       in.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function copyArray(arr:Array):Array
	{
		return arr.slice();
	}
}