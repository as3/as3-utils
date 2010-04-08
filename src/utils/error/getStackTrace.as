package utils.error
{
	/**
	 *   Get a stack trace
	 *   @return A stack trace
	 *   @author Jackson Dunstan
	 */
	public function getStackTrace():String
	{
		try
		{
			throw new Error();
		}
		catch (err:Error)
		{
			return err.getStackTrace();
		}
		// It's impossible to reach this
		return null;
	}
}