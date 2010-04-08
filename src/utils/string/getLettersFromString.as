package utils.string
{
	public function getLettersFromString(source:String):String
	{
		var pattern:RegExp = /[^A-Z^a-z]/g;
		return source.replace(pattern, '');
	}
}