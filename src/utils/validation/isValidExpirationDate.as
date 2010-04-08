package utils.validation
{
	/**
	 * Validate a credit card's expiration date.
	 * @example <listing version="3.0">
	 *      var isValidDate:Boolean = CreditCardValidator.isValidExDate( 11, 2010 );
	 * </listing>
	 */
	public function isValidExpirationDate(month:int, year:int):Boolean
	{
		var d:Date = new Date();
		var currentMonth:int = d.getMonth() + 1;
		var currentYear:int = d.getFullYear();
		if ((year > currentYear) || (year == currentYear && month >= currentMonth))
		{
			return true;
		}
		return false;
	}
}