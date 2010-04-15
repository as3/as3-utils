package utils.number
{
	import utils.math.Percent;

	/**
	   Determines a percentage of a value in a given range.

	   @param value: The value to be converted.
	   @param minimum: The lower value of the range.
	   @param maximum: The upper value of the range.
	   @example
	   <code>
	   trace(NumberUtil.normalize(8, 4, 20).decimalPercentage); // Traces 0.25
	   </code>
	 */
	public function normalize(value:Number, minimum:Number, maximum:Number):Percent
	{
		return new Percent((value - minimum) / (maximum - minimum));
	}
}