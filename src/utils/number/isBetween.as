package utils.number
{
	/**
	   Determines if the value is included within a range.

	   @param value: Number to determine if it is included in the range.
	   @param firstValue: First value of the range.
	   @param secondValue: Second value of the range.
	   @return Returns <code>true</code> if the number falls within the range; otherwise <code>false</code>.
	   @usageNote The range values do not need to be in order.
	   @example
	   <code>
	   trace(NumberUtil.isBetween(3, 0, 5)); // Traces true
	   trace(NumberUtil.isBetween(7, 0, 5)); // Traces false
	   </code>
	 */
	public function isBetween(value:Number, firstValue:Number, secondValue:Number):Boolean
	{
		return !(value < Math.min(firstValue, secondValue) || value > Math.max(firstValue, secondValue));
	}
}