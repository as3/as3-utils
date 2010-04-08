package utils.html
{
	/**
	 * Generate a SPAN tag.
	 */
	public function span(text:String, styleClass:String = null):String
	{
		return styledTag("span", text, styleClass);
	}
}