package utils.number
{
	/**
	   Creates a random number within the defined range.

	   @param min: The minimum value the random number can be.
	   @param min: The maximum value the random number can be.
	   @return Returns a random number within the range.
	 */
	public function randomWithinRange(min:Number, max:Number):Number
	{
		return min + (Math.random() * (max - min));
	}
}