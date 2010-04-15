package utils.conversion
{
	/**
	   Converts degrees to radians.

	   @param degrees: The number of degrees.
	   @return Returns the number of radians.
	 */
	public function degreesToRadians(degrees:Number):Number
	{
		return degrees * (Math.PI / 180);
	}
}