package utils.conversion
{
	/**
	   Converts bytes to kilobits.

	   @param bytes: The number of bytes.
	   @return Returns the number of kilobits.
	 */
	public function bytesToKilobits(bytes:Number):Number
	{
		return bytes / 128;
	}
}