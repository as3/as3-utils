package utils.assert
{
	public function assertIsTrue(expression:Boolean, message:String = ""):void
	{
		if (!expression)
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this expression must be true";
			}
			throw new Error(message);
		}
	}
}