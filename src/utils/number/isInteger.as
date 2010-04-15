package utils.number
{
	/**
	   Determines if the number is an integer.

	   @param value: A number to determine if it contains no decimal values.
	   @return Returns <code>true</code> if the number is an integer; otherwise <code>false</code>.
	   @example
	   <code>
	   trace(NumberUtil.isInteger(13)); // Traces true
	   trace(NumberUtil.isInteger(1.2345)); // Traces false
	   </code>
	 */
	public function isInteger(value:Number):Boolean
	{
		return (value % 1) == 0;
	}
}