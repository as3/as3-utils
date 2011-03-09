package utils.number {
	
	/**
	 * Returns true if the two numbers are within "maxPercentDifferent" percent of each other. 
	 * 
	 * @example <listing version='3.0'>
	 * isRoughlyEqual(0.7, 0.69); // true
	 * isRoughlyEqual(0.7, 0.5); // false
	 * 
	 * isRoughlyEqual(123456789, 123450000); // true
	 * isRoughlyEqual(123456789, 100000000); // false
	 * isRoughlyEqual(123456789, 100000000, 0.25); // true
	 * 
	 * </listing>
	 */
	public function isRoughlyEqual ( a:Number, b:Number, maxPercentDifferent:Number = 0.10 ):Boolean {
		return Math.abs((a/b) - 1.0) < maxPercentDifferent; 
	}
}