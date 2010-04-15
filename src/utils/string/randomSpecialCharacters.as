package utils.string
{
	/**
	 * Generate a set of random Special and Number characters.
	 */
	public function randomSpecialCharacters(amount:Number):String
	{
		var str:String = "";
		for (var i:int = 0; i < amount; i++)
			str += String.fromCharCode(Math.round(Math.random() * (64 - 33)) + 33);
		return str;
	}
}