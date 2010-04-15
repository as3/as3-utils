package utils.string
{
	/**
	 * Strip HTML markup tags.
	 */
	public function stripTags(str:String):String
	{
		var s:Array = new Array();
		var c:Array = new Array();
		for (var i:int = 0; i < str.length; i++)
		{
			if (str.charAt(i) == "<")
			{
				s.push(i);
			}
			else if (str.charAt(i) == ">")
			{
				c.push(i);
			}
		}
		var o:String = str.substring(0, s[0]);
		for (var j:int = 0; j < c.length; j++)
		{
			o += str.substring(c[j] + 1, s[j + 1]);
		}
		return o;
	}
}