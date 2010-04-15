package utils.string
{
	/**
	 * Generate a set of random Number characters.
	 */
	public function randomNumberString(amount:Number):String
	{
		var str:String = "";
		for (var i:int = 0; i < amount; i++)
			str += String.fromCharCode(Math.round(Math.random() * (57 - 48)) + 48);
		return str;
	}
}