package utils.string
{
	/**
	 * Trim spaces and camel notate String.
	 */
	public function trimCamel(str:String = null):String
	{
		str = (!str) ? "" : str;
		var o:String = new String();
		for (var i:int = 0; i < str.length; i++)
		{
			if (str.charAt(i) != " ")
			{
				if (justPassedSpace)
				{
					o += str.charAt(i).toUpperCase();
					justPassedSpace = false;
				}
				else
				{
					o += str.charAt(i).toLowerCase();
				}
			}
			else
			{
				var justPassedSpace:Boolean = true;
			}
		}
		return o;
	}
}