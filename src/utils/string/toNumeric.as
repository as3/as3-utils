package utils.string
{
	/**
	 * Remove all formatting and return cleaned numbers from string.
	 * @example <listing version="3.0">
	 *      StringUtils.toNumeric("123-123-1234"); // returns 1221231234
	 * </listing>
	 */
	public function toNumeric(str:String):String
	{
		var len:Number = str.length;
		var result:String = "";
		for (var i:int = 0; i < len; i++)
		{
			var code:Number = str.charCodeAt(i);
			if (code >= 48 && code <= 57)
			{
				result += str.substr(i, 1);
			}
		}
		return result;
	}
}