package utils.number
{
	/**
	   Maps a value from one coordinate space to another.

	   @param value: Value from the input coordinate space to map to the output coordinate space.
	   @param min1: Starting value of the input coordinate space.
	   @param max1: Ending value of the input coordinate space.
	   @param min2: Starting value of the output coordinate space.
	   @param max2: Ending value of the output coordinate space.
	   @example
	   <code>
	   trace(NumberUtil.map(0.75, 0, 1, 0, 100)); // Traces 75
	   </code>
	 */
	public function map(value:Number, min1:Number, max1:Number, min2:Number, max2:Number):Number
	{
		return min2 + (max2 - min2) * ((value - min1) / (max1 - min1));
	}
}