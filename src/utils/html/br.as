package utils.html
{
	/**
	 * Inset a BR with optional newline.
	 */
	public function br(addNewline:Boolean = false):String
	{
		return "<br/>" + (addNewline ? "\n" : "");
	}
}