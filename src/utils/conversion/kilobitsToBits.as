package utils.conversion
{
	/**
	   Converts kilobits to bits.

	   @param kilobits: The number of kilobits.
	   @return Returns the number of bits.
	 */
	public function kilobitsToBits(kilobits:Number):Number
	{
		return kilobits * 1024;
	}
}