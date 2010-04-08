package utils.range
{
	/**
	 * Returns a random int number within a given range
	 */
	public function randomRangeInt(min:Number, max:Number):Number
	{
		return Math.floor(Math.random() * (max - min + 1) + min);
	}
}