package utils.string
{
	/**
	 *       Removes whitespace from the end of the specified string.
	 *
	 *       @param input The String whose ending whitespace will will be removed.
	 *
	 *       @returns A String with whitespace removed from the end
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function rtrim(input:String):String
	{
		var size:Number = input.length;
		for (var i:Number = size; i > 0; i--)
		{
			if (input.charCodeAt(i - 1) > 32)
			{
				return input.substring(0, i);
			}
		}

		return "";
	}
}