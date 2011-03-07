package utils.number
{
	/**
	 *  Randomly generates a number in a range between min and max inclusively.
	 *  Automatically swaps max and min if min is higher than max.
	 *
	 *  @param min The minimum value the random number can be.
	 *  @param min The maximum value the random number can be.
	 *  @return Returns a random number within the range.
	 * 
	 * @author Mims Wright
	 */
	public function randomWithinRange(min:Number, max:Number):Number
	{
		if (min > max) {
			var temp:Number = max;
			max = min;
			min = temp;
		}
		return min + (Math.random() * (max - min));
	}
}