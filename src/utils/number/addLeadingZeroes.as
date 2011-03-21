package utils.number
{
	/**
	 * Formats a number to include one or more leading zeroes if needed. 
	 * @example <listing version="3.0">
	 * addLeadingZeroes(4); // "04"
	 * addLeadingZeroes(5, 3); // "0005"
	 * addLeadingZeroes(10, 1); // "10"
	 * addLeadingZeroes(10, 2); // "010"
	 * </listing>
	 * 
	 * @param n The number that will be formatted. Ignores negative numbers.
	 * @return A string of the number with leading zeroes.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * 
	 * @author updated by Mims Wright - original contributor unknown
	 */
	public function addLeadingZeroes(n:Number, zeroes:int = 1):String
	{
		var out:String = String(n);
		
		if (n < 0 || zeroes < 1) {
			return out;
		}

		while (out.length < zeroes + 1) {
			out = "0" + out;
		}

		return out;
	}
}