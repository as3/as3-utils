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
		var states:Array = new Array('ak', 'al', 'ar', 'az', 'ca', 'co', 'ct', 'dc', 'de', 'fl', 'ga', 'hi', 'ia', 'id', 'il', 'in', 'ks', 'ky', 'la', 'ma', 'md', 'me', 'mi', 'mn', 'mo', 'ms', 'mt', 'nb', 'nc', 'nd', 'nh', 'nj', 'nm', 'nv', 'ny', 'oh', 'ok', 'or', 'pa', 'ri', 'sc', 'sd', 'tn', 'tx', 'ut', 'va', 'vt', 'wa', 'wi', 'wv', 'wy');
		return contains(states, state.toLowerCase()) == 1;
	}
}