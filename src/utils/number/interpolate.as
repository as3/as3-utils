package utils.number
{
	import utils.math.Percent;

	/**
	   Determines a value between two specified values.

	   @param amount: The level of interpolation between the two values. If <code>0%</code>, <code>begin</code> value is returned; if <code>100%</code>, <code>end</code> value is returned.
	   @param minimum: The lower value.
	   @param maximum: The upper value.
	   @example
	   <code>
	   trace(NumberUtil.interpolate(new Percent(0.5), 0, 10)); // Traces 5
	   </code>
	 */
	public function interpolate(amount:Percent, minimum:Number, maximum:Number):Number
	{
		return minimum + (maximum - minimum) * amount.decimalPercentage;
	}
}