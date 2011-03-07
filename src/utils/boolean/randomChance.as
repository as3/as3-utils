package utils.boolean
{
	/**
	 * Randomly returns true "percent"% of the time (where percent is a decimal between 0.0 and 1.0).
	 * 
	 * @author Mims Wright
	 */
	public function randomChance(percent:Number):Boolean 
	{
		return Math.random() < percent;
	}
}