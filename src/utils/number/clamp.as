package utils.number
{
	/**
	 * Constrains a value to the defined numeric boundaries.
	 * 
	 * @example <listing version="3.0">
	 * clamp(3, 2, 5);   // this will give back 3 since it's within the range
	 * clamp(20, 2, 5);  // this will give back 5 since 5 is the upper boundary
	 * clamp(-5, 2, 5);  // this will give back 2 since 2 is the lower boundary
	 * </listing>
	 * 
	 * @author Mims Wright
	 */
	public function clamp(val:Number, min:Number, max:Number):Number
	{
		return Math.max(Math.min(val, max), min);
	}
}