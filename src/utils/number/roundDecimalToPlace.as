package utils.number
{
	/**
	   Rounds a number's decimal value to a specific place.

	   @param value: The number to round.
	   @param place: The decimal place to round.
	   @return Returns the value rounded to the defined place.
	   @example
	   <code>
	   trace(NumberUtil.roundToPlace(3.14159, 2)); // Traces 3.14
	   trace(NumberUtil.roundToPlace(3.14159, 3)); // Traces 3.142
	   </code>
	 */
	public function roundDecimalToPlace(value:Number, place:uint):Number
	{
		var p:Number = Math.pow(10, place);

		return Math.round(value * p) / p;
	}
}