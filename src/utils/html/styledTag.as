package utils.html
{

	/**
	 * Generate a styled tag.
	 */
	[ExludeClass]
	public function styledTag(tagName:String, text:String, styleClass:String):String
	{
		return '<' + tagName + ((styleClass) ? ' class="' + styleClass + '"' : "") + '>' + text + '</' + tagName + '>';
	}
}