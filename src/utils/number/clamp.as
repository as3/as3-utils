package utils.number
{
	/**
	 * Clamp constrains a value to the defined numeric boundaries.
	 * @example <listing version="3.0">
	 * val: 20, 2 to 5    this will give back 5 since 5 is the top boundary
	 * val: 3, 2 to 5     this will give back 3
	 * </listing>
	 */
	public function clamp(val:Number, min:Number, max:Number):Number
	{
		if (val < min) return min;
		if (val > max) return max;
		return val;
	}
}