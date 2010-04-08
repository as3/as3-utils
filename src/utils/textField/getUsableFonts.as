package utils.textField
{
	import flash.text.Font;

	/**
	 * Searches the client's available fonts to see if any of the Font from the <code>desiredFontList</code> are available.
	 * @param desiredFontList       array of desired <code>fontName</code>'s.
	 * @return                                      array of desired fonts which are available for use on the client's system.
	 */
	public function getUsableFonts(desiredFontList:Array):Array
	{
		var clientFontList:Array = Font.enumerateFonts(true);
		var availableFontList:Array = new Array();
		for (var i:Number = 0; i < desiredFontList.length; i++)
		{
			for (var j:Number = 0; j < clientFontList.length; j++)
			{
				if (desiredFontList[i] == Font(clientFontList[j]).fontName)
				{
					availableFontList.push(desiredFontList[i]);
				}
			}
		}
		return (availableFontList.length >= 1) ? availableFontList : null;
	}
}