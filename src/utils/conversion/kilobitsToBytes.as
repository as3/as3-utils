package utils.conversion
{
	/**
	   Converts kilobits to bytes.

	   @param kilobits: The number of kilobits.
	   @return Returns the number of bytes.
	 */
	public function kilobitsToBytes(kilobits:Number):Number
	{
		return kilobits * 128;
	}
}