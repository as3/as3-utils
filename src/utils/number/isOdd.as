package utils.number
{
	/**
	   Determines if the number is odd.

	   @param value: A number to determine if it is not divisible by <code>2</code>.
	   @return Returns <code>true</code> if the number is odd; otherwise <code>false</code>.
	   @example
	   <code>
	   trace(NumberUtil.isOdd(7)); // Traces true
	   trace(NumberUtil.isOdd(12)); // Traces false
	   </code>
	 */
	public function isOdd(value:Number):Boolean
	{
		return !isEven(value);
	}
}