package utils.number {



	/**
	 * Determines whether or not the supplied Number is negative.
	 * @param value Number to evaluate
	 * @return Whether or not the supplied Number is negative
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isNegative(value:Number):Boolean {
		return !isPositive(value);
	}
}
