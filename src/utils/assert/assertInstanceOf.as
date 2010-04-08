package utils.assert
{
	/**
	 * Assert that an object is an instance of a certain type..
	 * <pre class="code">Assert.instanceOf(value, type, "The value must be an instance of 'type'");</pre>
	 * @param object the object to check
	 * @param message the error message to use if the assertion fails
	 * @throws org.as3commons.lang.IllegalArgumentError if the object is not an instance of the given type
	 */
	public function assertInstanceOf(object:*, type:Class, message:String = ""):void
	{
		if (!(object is type))
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this argument is not of type '" + type + "'";
			}
			throw new Error(message);

		}
	}
}