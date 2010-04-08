package utils.assert
{
	/**
	 * Assert that an object is <code>null</code>.
	 * <pre class="code">Assert.isNull(value, "The value must be null");</pre>
	 * @param object the object to check
	 * @param message the error message to use if the assertion fails
	 * @throws org.as3commons.lang.IllegalArgumentError if the object is not <code>null</code>
	 */
	public function assertNotNull(object:Object, message:String = ""):void
	{
		if (object == null)
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this argument is required; it must not null";
			}
			throw new Error(message);
		}
	}
}