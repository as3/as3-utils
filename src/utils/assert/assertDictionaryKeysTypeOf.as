package utils.assert
{
	import flash.utils.Dictionary;

	/**
	 * Assert that the given Dictionary contains only keys of the given type.
	 */
	public function assertDictionaryKeysTypeOf(dictionary:Dictionary, type:Class, message:String = ""):void
	{
		for (var key:Object in dictionary)
		{
			if (!(key is type))
			{
				if (message == null || message.length == 0)
				{
					message = "[Assertion failed] - this Dictionary argument must have keys of type '" + type + "'";
				}
				throw new Error(message);
			}
		}
	}
}