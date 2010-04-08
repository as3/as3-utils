package utils.validation
{
	import utils.string.trim;

	/**
	 * Validate if a strings contents are blank after a safety trim is performed.
	 */
	public function isBlank(s:String = null):Boolean
	{
		var str:String = trim(s);
		var i:int = 0;
		if (str.length == 0)
		{
			return true;
		}
		while (i < str.length)
		{
			if (str.charCodeAt(0) != 32)
			{
				return false;
			}
			i++;
		}
		return true;
	}
}