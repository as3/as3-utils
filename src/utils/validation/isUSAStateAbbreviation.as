package utils.validation
{
	import utils.array.contains;

	/**
	   Determines if String is a valid USA state abbreviation.

	   @param state: String to verify as two letter state abbreviation (includes DC).
	   @return Returns <code>true</code> if String is a state abbreviation; otherwise <code>false</code>.
	 */
	public function isUSAStateAbbreviation(state:String):Boolean
	{
		return contains(US_STATE_ABBREVIATIONS, state.toLowerCase()) == 1;
	}
}