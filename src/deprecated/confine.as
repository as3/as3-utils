package deprecated
{
	[Deprecated(replacement="utils.number.clamp")]
	
	/**
	 * Restricts the <code>value</code> to the <code>min</code> and <code>max</code>
	 * @param value the number to restrict
	 * @param min the minimum number for <code>value</code> to be
	 * @param max the maximum number for <code>value</code> to be
	 * @return
	 */
	public function confine(value:Number, min:Number, max:Number):Number {
		return value < min ? min : (value > max ? max : value);
	}
}
