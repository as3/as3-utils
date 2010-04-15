package utils.validation
{
	/**
	 * Encode a credit card number as a string and encode all digits except the
	 * last <code>digitsShown</code>.
	 *
	 * @param strNumber     credit card number as string
	 * @param digitsShown   display this many digits at the end of the card number for security purposes
	 * @param encodeChar    optional encoding character to use instead of default '*'
	 *
	 * @example
	 * <listing version="3.0">
	 * trace(CreditCardValidator.EncodeNumber("1234567890123456")); // ************3456
	 * trace(CreditCardValidator.EncodeNumber("1234567890123456", 5, "x"));  // xxxxxxxxxxx23456
	 * </listing>
	 */
	public function encodeCreditCardNumber(strNumber:String, digitsShown:uint = 4, encodeChar:String = "*"):String
	{
		var encoded:String = "";
		for (var i:Number = 0; i < strNumber.length - digitsShown; i++)
		{
			encoded += encodeChar;
		}
		encoded += strNumber.slice(-digitsShown);
		return encoded;
	}
}