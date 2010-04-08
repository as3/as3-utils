package utils.date
{
	/**
	 *       Compares two dates and returns an integer depending on their relationship.
	 *
	 *       Returns -1 if d1 is greater than d2.
	 *       Returns 1 if d2 is greater than d1.
	 *       Returns 0 if both dates are equal.
	 *
	 *       @param d1 The date that will be compared to the second date.
	 *       @param d2 The date that will be compared to the first date.
	 *
	 *       @return An int indicating how the two dates compare.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function compareDates(d1:Date, d2:Date):int
	{
		var d1ms:Number = d1.getTime();
		var d2ms:Number = d2.getTime();

		if (d1ms > d2ms)
		{
			return -1;
		}
		else if (d1ms < d2ms)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
}