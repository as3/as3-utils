package utils.number
{
	/**
	 * Inserts commas every three digits in the integer of <code>value</code>
	 * @param value the number to insert commas into
	 * @return <code>value</code> as a <code>String</code> formatted with commas
	 */
	public function insertCommas(value:Number):String
	{
		// convert the value to a string
		var valueString:String = String(value);

		// determine the location of the point
		var commaIndex:int = valueString.indexOf(".");

		// if a point doesn't exist, consider it to be at the end of the value
		if (commaIndex == -1)
			commaIndex = valueString.length;

		do
		{
			// move to the left three digits
			commaIndex -= 3;

			// if index is beyond the beginning of the value, end the loop
			if (commaIndex <= 0)
				break;

			// insert the comma
			valueString = valueString.substring(0, commaIndex) + "," + valueString.substr(commaIndex);
		}
		while (true);

		// remove "0" if value is a decimal
		if (valueString.substr(0, 2) == "0.")
			valueString = valueString.substr(1);

		return valueString;
	}
}