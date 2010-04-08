package utils.number
{
	/**
	 * Resticts the <code>value</code> to the <code>min</code> and <code>max</code>
	 * @param value the number to restrict
	 * @param min the minimum number for <code>value</code> to be
	 * @param max the maximmum number for <code>value</code> to be
	 * @return
	 */
	public function confine(value:Number, min:Number, max:Number):Number
	{
		return value < min ? min : (value > max ? max : value);
	}
}