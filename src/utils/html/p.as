package utils.html
{
	/**
	 * Generate a P tag.
	 */
	public function p(text:String, styleClass:String = null):String
	{
		return styledTag("p", text, styleClass);
	}
}