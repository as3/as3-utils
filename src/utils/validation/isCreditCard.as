package utils.validation
{
	/**
	   Determines if credit card is valid using the Luhn formula.

	   @param cardNumber: The credit card number.
	   @return Returns <code>true</code> if String is a valid credit card number; otherwise <code>false</code>.
	 */
	public function isCreditCard(cardNumber:String):Boolean
	{
		if (cardNumber.length < 7 || cardNumber.length > 19 || Number(cardNumber) < 1000000)
			return false;

		var pre:Number;
		var sum:Number = 0;
		var alt:Boolean = true;

		var i:Number = cardNumber.length;
		while (--i > -1)
		{
			if (alt)
				sum += Number(cardNumber.substr(i, 1));
			else
			{
				pre = Number(cardNumber.substr(i, 1)) * 2;
				sum += (pre > 8) ? pre -= 9 : pre;
			}

			alt = !alt;
		}

		return sum % 10 == 0;
	}
}