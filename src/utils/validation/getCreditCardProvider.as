package utils.validation
{
	public function getCreditCardProvider(cardNumber:String):String
	{
		if (!isCreditCard(cardNumber))
			return 'invalid';

		if (cardNumber.length == 13 ||
			cardNumber.length == 16 &&
			cardNumber.indexOf('4') == 0)
		{
			return 'visa';
		}
		else if (cardNumber.indexOf('51') == 0 ||
			cardNumber.indexOf('52') == 0 ||
			cardNumber.indexOf('53') == 0 ||
			cardNumber.indexOf('54') == 0 ||
			cardNumber.indexOf('55') == 0 &&
			cardNumber.length == 16)
		{
			return 'mastercard';
		}
		else if (cardNumber.length == 16 &&
			cardNumber.indexOf('6011') == 0)
		{
			return 'discover';
		}
		else if (cardNumber.indexOf('34') == 0 ||
			cardNumber.indexOf('37') == 0 &&
			cardNumber.length == 15)
		{
			return 'amex';
		}
		else if (cardNumber.indexOf('300') == 0 ||
			cardNumber.indexOf('301') == 0 ||
			cardNumber.indexOf('302') == 0 ||
			cardNumber.indexOf('303') == 0 ||
			cardNumber.indexOf('304') == 0 ||
			cardNumber.indexOf('305') == 0 ||
			cardNumber.indexOf('36') == 0 ||
			cardNumber.indexOf('38') == 0 &&
			cardNumber.length == 14)
		{
			return 'diners';
		}
		else
			return 'other';
	}
}