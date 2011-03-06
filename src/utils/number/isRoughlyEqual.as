package utils.number {
	
	/**
	 * Returns true if the two numbers are within "maxPercentDifferent" percent of each other. 
	 * 
	 * @example <listing version='3.0'>
	 * FuzzyMath.roughlyEqual(0.7, 0.69); // true
	 * FuzzyMath.roughlyEqual(0.7, 0.5); // false
	 * 
	 * FuzzyMath.roughlyEqual(123456789, 123450000); // true
	 * FuzzyMath.roughlyEqual(123456789, 100000000); // false
	 * FuzzyMath.roughlyEqual(123456789, 100000000, 0.25); // true
	 * 
	 * </listing>
	 */
	public function isRoughlyEqual ( a:Number, b:Number, maxPercentDifferent:Number = 0.10 ):Boolean {
		return Math.abs((a/b) - 1.0) < maxPercentDifferent; 
	}
}