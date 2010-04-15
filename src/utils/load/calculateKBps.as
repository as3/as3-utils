package utils.load
{
	import utils.conversion.bytesToKilobytes;

	/**
	   Calculates the load speed in kilobytes per second (kBps).

	   @param bytesLoaded: Number of bytes that have loaded between <code>startTime</code> and <code>elapsedTime</code>.
	   @param startTime: Time in milliseconds when the load started.
	   @param elapsedTime: Time in milliseconds since the load started or time when load completed.
	   @return Kilobytes per second.
	   @usageNote This method returns kiloBYTES per second, not kilobits per second.
	 */
	public function calculateKBps(bytesLoaded:uint, startTime:uint, elapsedTime:uint):Number
	{
		return bytesToKilobytes(calculateBps(bytesLoaded, startTime, elapsedTime));
	}
}
