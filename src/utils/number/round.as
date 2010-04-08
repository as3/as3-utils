package utils.number
{
	/**
	 * Rounds a number to the nearest nth, where <code>digits</code> is n / 10.
	 * @param value the number to round
	 * @param digits the number of digits to show after the point
	 * @return
	 */
	public function round(value:Number, digits:int):Number
	{
		digits = Math.pow(10, digits);

		return Math.round(value * digits) / digits;
	}
}