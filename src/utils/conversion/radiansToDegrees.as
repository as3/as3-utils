package utils.conversion
{
	/**
	   Converts radians to degrees.

	   @param radians: The number of radians.
	   @return Returns the number of degrees.
	 */
	public function radiansToDegrees(radians:Number):Number
	{
		return radians * (180 / Math.PI);
	}
}