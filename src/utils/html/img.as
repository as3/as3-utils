package utils.html
{
	/**
	 * Generate an IMG tag.
	 */
	public function img(src:String, alt:String = "image", width:int = 0, height:int = 0):String
	{
		return '<img src="' + src + '" alt="' + alt + '"' + ((width > 0) ? ' width="' + width.toString() + '"' : "") + ((height > 0) ? ' height="' + height.toString() + '"' : "") + '/>';
	}
}