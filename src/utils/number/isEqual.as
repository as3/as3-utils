package utils.number
{
	/**
	   Determines if the two values are equal, with the option to define the precision.

	   @param val1: A value to compare.
	   @param val2: A value to compare.
	   @param precision: The maximum amount the two values can differ and still be considered equal.
	   @return Returns <code>true</code> the values are equal; otherwise <code>false</code>.
	   @example
	   <code>
	   trace(NumberUtil.isEqual(3.042, 3, 0)); // Traces false
	   trace(NumberUtil.isEqual(3.042, 3, 0.5)); // Traces true
	   </code>
	 */
	public function isEqual(val1:Number, val2:Number, precision:Number = 0):Boolean
	{
		return Math.abs(val1 - val2) <= Math.abs(precision);
	}
}