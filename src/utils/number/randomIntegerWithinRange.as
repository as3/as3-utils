package utils.number
{
	/**
	   Creates a random integer within the defined range.

	   @param min: The minimum value the random integer can be.
	   @param min: The maximum value the random integer can be.
	   @return Returns a random integer within the range.
	 */
	public function randomIntegerWithinRange(min:int, max:int):int
	{
		return Math.round(randomWithinRange(min, max));
	}
}