package utils.assert
{
	/**
	 * Assert that the array contains the passed in item.
	 */
	public function assertArrayContains(array:Array, item:*, message:String = ""):void
	{
		if (array.indexOf(item) == -1)
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this Array argument does not contain the item '" + item + "'";
			}
			throw new Error(message);
		}
	}
}