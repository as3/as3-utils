package utils.validation
{
	import utils.string.toNumeric;

	/**
	 * Validate a credit card number as much as possible before submitting for approval.
	 * @param strNumber     credit card number as string
	 * @example <listing version="3.0">
	 * var isValidNumber:Boolean = CreditCardValidator.isValidNumber("1234567890123456");
	 * </listing>
	 */
	public function isValidCreditCardNumber(strNumber:String):Boolean
	{
		var mod10:Function = function mod10(strNumber:String):Boolean
			{

				// Seperate each number into it's own index in an array.
				var aNumbers:Array = strNumber.split("");

				// Hold the sums of some calculations that will be made shortly.
				var nSum_1:Number = 0;
				var nSum_2:Number = 0;
				var nSum_Total:Number = 0;

				// Check to see if the length of the card number is odd or even. This will
				// be used to determine which indicies are doubled before being summed up.
				var nParity:Number = aNumbers.length % 2;

				// Loop through the card numbers.
				for (var i:uint = 0; i < aNumbers.length; i++)
				{
					// Type cast each digit to a number.

                    var num:uint = uint(aNumbers[i]);

					aNumbers[i] = num;

					// Compare the parity of the index to the parity of the card number length
					// to determine how the value of the current index is handled.
					if (i % 2 == nParity)
					{
						// Double each number.
						aNumbers[i] *= 2;

						// If the resulting value is greater than '9', subtract '9' from it.
						aNumbers[i] = aNumbers[i] > 9 ? aNumbers[i] - 9 : aNumbers[i];

						// Add each value together.
						nSum_1 += aNumbers[i];
					}
					else
					{
						// Add each value together.
						nSum_2 += aNumbers[i];
					}
				}
				// Find the total sum of the two groups.
				nSum_Total = nSum_1 + nSum_2;

				// If the sum is divisible by '10', the card number is valid.
				return (nSum_Total % 10 == 0);
			}

		const MINIMUM_CARD_LENGTH:int = 13;
		const MAXIMUM_CARD_LENGTH:int = 16;

		var ccNumber:String = toNumeric(strNumber);
		if (ccNumber.length > 0 && !isNaN(ccNumber as Number) && (ccNumber.length >= MINIMUM_CARD_LENGTH && ccNumber.length <= MAXIMUM_CARD_LENGTH))
		{
			return mod10(ccNumber);
		}
		return false;
	}
}