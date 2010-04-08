package utils.range
{
	/**
	 * Resolve the number inside the range. If outside the range the nearest boundary value will be returned.
	 */
	public function resolve(val:Number, min:Number, max:Number):Number
	{
		return Math.max(Math.min(val, max), min);
	}
}