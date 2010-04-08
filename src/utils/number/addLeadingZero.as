package utils.number
{
	/**
	 *       Formats a number to include a leading zero if it is a single digit
	 *       between -1 and 10.
	 *
	 *       @param n The number that will be formatted
	 *
	 *       @return A string with single digits between -1 and 10 padded with a
	 *       leading zero.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function addLeadingZero(n:Number):String
	{
		var out:String = String(n);

		if (n < 10 && n > -1)
		{
			out = "0" + out;
		}

		return out;
	}
}