package utils.assert
{
	import utils.validation.isBlank;

	/**
	 * Assert that the given String has valid text content; that is, it must not
	 * be <code>null</code> and must contain at least one non-whitespace character.
	 *
	 * @param text the String to check
	 * @param message the exception message to use if the assertion fails
	 * @see StringUtils#hasText
	 */
	public function assertHasText(string:String, message:String = ""):void
	{
		if (isBlank(string))
		{
			if (message == null || message.length == 0)
			{
				message = "[Assertion failed] - this String argument must have text; it must not be <code>null</code>, empty, or blank";
			}
			throw new Error(message);
		}
	}
}