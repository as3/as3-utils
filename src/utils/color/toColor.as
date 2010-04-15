package utils.color
{
	/**
	 * Parse a String representation of a color (hex or html) to uint.
	 */
	public function toColor(str:String):uint
	{
		if (str.substr(0, 2) == '0x')
		{
			str = str.substr(2);
		}
		else if (str.substr(0, 1) == '#')
		{
			str = str.substr(1);
		}
		return parseInt(str, 16);
	}
}