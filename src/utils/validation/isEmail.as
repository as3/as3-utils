package utils.validation
{
	/**
	   Determines if String is a valid email address.

	   @param email: String to verify as email.
	   @return Returns <code>true</code> if String is a valid email; otherwise <code>false</code>.
	   @see http://www.regular-expressions.info/email.html Read more about the regular expression used by this method.
	 */
	public function isEmail(email:String):Boolean
	{
		var pattern:RegExp = /^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
		return email.match(pattern) != null;
	}
}