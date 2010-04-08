package utils.string
{
	/**
	 * Convert double quotes to single quotes.
	 */
	public function toSingleQuote(str:String):String
	{
		var sq:String = "'";
		var dq:String = String.fromCharCode(34);
		return str.split(dq).join(sq);
	}
}