package utils.string
{
	/**
	 * Convert single quotes to double quotes.
	 */
	public function toDoubleQuote(str:String):String
	{
		var sq:String = "'";
		var dq:String = String.fromCharCode(34);
		return str.split(sq).join(dq);
	}
}