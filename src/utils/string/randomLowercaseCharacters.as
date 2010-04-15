package utils.string
{
	/**
	 * Generate a set of random LowerCase characters.
	 */
	public function randomLowercaseCharacters(amount:Number):String
	{
		var str:String = "";
		for (var i:int = 0; i < amount; i++)
			str += String.fromCharCode(Math.round(Math.random() * (122 - 97)) + 97);
		return str;
	}
}