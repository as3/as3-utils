package utils.number
{
	/**
	   Evaluates <code>val1</code> and <code>val2</code> and returns the smaller value. Unlike <code>Math.min</code> this method will return the defined value if the other value is <code>null</code> or not a number.

	   @param val1: A value to compare.
	   @param val2: A value to compare.
	   @return Returns the smallest value, or the value out of the two that is defined and valid.
	   @example
	   <code>
	   trace(min(5, null)); // Traces 5
	   trace(min(5, "CASA")); // Traces 5
	   trace(min(5, 13)); // Traces 5
	   </code>
	 */
	public function min(val1:*, val2:*):Number
	{
		if (isNaN(val1) && isNaN(val2) || val1 == null && val2 == null)
			return NaN;

		if (val1 == null || val2 == null)
			return (val2 == null) ? val1 : val2;

		if (isNaN(val1) || isNaN(val2))
			return isNaN(val2) ? val1 : val2;

		return Math.min(val1, val2);
	}
}