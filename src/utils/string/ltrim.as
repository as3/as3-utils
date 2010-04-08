package utils.string
{
	/**
	 *       Removes whitespace from the front of the specified string.
	 *
	 *       @param input The String whose beginning whitespace will will be removed.
	 *
	 *       @returns A String with whitespace removed from the begining
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function ltrim(input:String):String
	{
		var size:Number = input.length;
		for (var i:Number = 0; i < size; i++)
		{
			if (input.charCodeAt(i) > 32)
			{
				return input.substring(i);
			}
		}
		return "";
	}
}