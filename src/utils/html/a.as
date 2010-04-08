package utils.html
{
	/**
	 * Generate an A HREF tag.
	 */
	public function a(href:String, text:String, styleClass:String = null):String
	{
		return '<a href="' + href + '"' + ((styleClass) ? ' class="' + styleClass + '"' : "") + ">" + text + "</a>";
	}
}