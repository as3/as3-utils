package utils.number
{
	/**
	   Determines if the number is even.

	   @param value: A number to determine if it is divisible by <code>2</code>.
	   @return Returns <code>true</code> if the number is even; otherwise <code>false</code>.
	   @example
	   <code>
	   trace(NumberUtil.isEven(7)); // Traces false
	   trace(NumberUtil.isEven(12)); // Traces true
	   </code>
	 */
	public function isEven(value:Number):Boolean
	{
		return (value & 1) == 0;
	}
}