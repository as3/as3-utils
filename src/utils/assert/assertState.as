package utils.assert
{
	/**
	 * Assert a boolean expression to be true. If false, an IllegalStateError is thrown.
	 * @param expression a boolean expression
	 * @param the error message if the assertion fails
	 */
	public function assertState(expression:Boolean, message:String = ""):void
	{
		if (!expression)
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this state invariant must be true";
			}
			throw new Error(message);
		}
	}
}