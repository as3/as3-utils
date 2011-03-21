package deprecated
{
	[Deprecated(replacement="utils.number.clamp")]
	
	/**
	   Determines if value falls within a range; if not it is snapped to the nearest range value.

	   @param value: Number to determine if it is included in the range.
	   @param firstValue: First value of the range.
	   @param secondValue: Second value of the range.
	   @return Returns either the number as passed, or its value once snapped to nearest range value.
	   @usageNote The constraint values do not need to be in order.
	   @example
	   <code>
	   trace(NumberUtil.constrain(3, 0, 5)); // Traces 3
	   trace(NumberUtil.constrain(7, 0, 5)); // Traces 5
	   </code>
	 */
	public function constrain(value:Number, firstValue:Number, secondValue:Number):Number
	{
		return Math.min(Math.max(value, Math.min(firstValue, secondValue)), Math.max(firstValue, secondValue));
	}
}