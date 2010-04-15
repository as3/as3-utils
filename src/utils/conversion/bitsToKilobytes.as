package utils.conversion
{
	/**
	   Converts bits to kilobytes.

	   @param bits: The number of bits.
	   @return Returns the number of kilobits.
	 */
	public function bitsToKilobytes(bits:Number):Number
	{
		return bits / 8192;
	}
}