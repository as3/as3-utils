package utils.error
{
	/**
	 *   Get a stack trace
	 *   @return A stack trace
	 *   @author Jackson Dunstan
	 */
	public function getStackTrace():String
	{
		return new Error().getStackTrace();
	}
}