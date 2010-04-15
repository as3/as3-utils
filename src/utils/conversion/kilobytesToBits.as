package utils.conversion
{
	/**
	   Converts kilobytes to bits.

	   @param kilobytes: The number of kilobytes.
	   @return Returns the number of bits.
	 */
	public function kilobytesToBits(kilobytes:Number):Number
	{
		return kilobytes * 8192;
	}
}