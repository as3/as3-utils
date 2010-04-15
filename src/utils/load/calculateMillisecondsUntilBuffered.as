package utils.load
{
	/**
	   Calculates the remaining time until the video is buffered.

	   @param bytesLoaded: Number of bytes that have loaded between <code>startTime</code> and <code>elapsedTime</code>.
	   @param bytesTotal: Number of bytes total to be loaded.
	   @param startTime: Time in milliseconds when the load started.
	   @param elapsedTime: The current time in milliseconds or time when load completed.
	   @param lengthInMilliseconds: The total duration/length of the video in milliseconds.
	   @return The amount millisecond that remain before the video is buffered.
	 */
	public function calculateMillisecondsUntilBuffered(bytesLoaded:uint, bytesTotal:uint, startTime:uint, elapsedTime:uint, lengthInMilliseconds:uint):uint
	{
		return Math.max(Math.ceil((bytesTotal - bytesLoaded) / (bytesLoaded / (elapsedTime - startTime))) - lengthInMilliseconds, 0);
	}
}