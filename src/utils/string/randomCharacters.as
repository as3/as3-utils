package utils.string
{
	/**
	 * Generate a set of random characters.
	 */
	public function randomCharacters(amount:Number):String
	{
		var str:String = "";
		for (var i:int = 0; i < amount; i++)
			str += String.fromCharCode(Math.round(Math.random() * (126 - 33)) + 33);
		return str;
	}
}