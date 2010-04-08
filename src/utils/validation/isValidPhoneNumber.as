package utils.validation
{
	/**
	 * Validate a string as a phone number.
	 */
	public function isValidPhoneNumber(str:String):Boolean
	{
		var phoneExpression:RegExp = /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,3})|(\(?\d{2,3}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/i;
		return phoneExpression.test(str);
	}
}