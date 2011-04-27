package utils.load
{
	import utils.math.Percent;
	import utils.number.clamp;

	/**
	   Calculates the percent the video has buffered.

	   @param bytesLoaded: Number of bytes that have loaded between <code>startTime</code> and <code>elapsedTime</code>.
	   @param bytesTotal: Number of bytes total to be loaded.
	   @param startTime: Time in milliseconds when the load started.
	   @param elapsedTime: The current time in milliseconds or time when load completed.
	   @param lengthInMilliseconds: The total duration/length of the video in milliseconds.
	   @return The percent buffered.
	 */
	public function calculateBufferPercent(bytesLoaded:uint, bytesTotal:uint, startTime:uint, elapsedTime:uint, lengthInMilliseconds:uint):Percent
	{
		var totalWait:Number = bytesTotal / (bytesLoaded / (elapsedTime - startTime)) - lengthInMilliseconds;
		var millisecondsRemaining:uint = calculateMillisecondsUntilBuffered(bytesLoaded, bytesTotal, startTime, elapsedTime, lengthInMilliseconds);

		return (totalWait == Number.POSITIVE_INFINITY) ? new Percent(0) : new Percent(clamp(1 - millisecondsRemaining / totalWait, 0, 1));
	}
}