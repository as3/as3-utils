package utils.conversion
{
	/**
	   Converts kilobytes to kilobits.

	   @param kilobytes: The number of kilobytes.
	   @return Returns the number of kilobits.
	 */
	public function kilobytesToKilobits(kilobytes:Number):Number
	{
		return kilobytes * 8;
	}
}