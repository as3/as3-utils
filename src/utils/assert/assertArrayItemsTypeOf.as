package utils.assert
{
	/**
	 * Assert that all items in the array are of the given type.
	 *
	 * @param array the array to check
	 * @param type the type of the array items
	 * @param message the error message to use if the assertion fails
	 */
	public function assertArrayItemsTypeOf(array:Array, type:Class, message:String = ""):void
	{
		for each (var item:* in array)
		{
			if (!(item is type))
			{
				if (message == null || message.length == 0)
				{
					message = "[Assertion failed] - this Array must have items of type '" + type + "'";
				}
				throw new Error(message);
			}
		}
	}
}