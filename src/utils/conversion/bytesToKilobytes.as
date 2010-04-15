package utils.conversion
{
	/**
	   Converts bytes to kilobytes.

	   @param bytes: The number of bytes.
	   @return Returns the number of kilobytes.
	 */
	public function bytesToKilobytes(bytes:Number):Number
	{
		return bytes / 1024;
	}
}