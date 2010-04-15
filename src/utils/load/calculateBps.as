package utils.load
{
	import utils.conversion.millisecondsToSeconds;

	/**
	   Calculates the load speed in bytes per second (Bps).

	   @param bytesLoaded: Number of bytes that have loaded between <code>startTime</code> and <code>elapsedTime</code>.
	   @param startTime: Time in milliseconds when the load started.
	   @param elapsedTime: Time in milliseconds since the load started or time when load completed.
	   @return Bytes per second.
	   @usageNote This method returns BYTES per second, not bits per second.
	 */
	public function calculateBps(bytesLoaded:uint, startTime:uint, elapsedTime:uint):int
	{
		return Math.max(0, (bytesLoaded / millisecondsToSeconds(elapsedTime - startTime)));
	}
}