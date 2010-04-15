package utils.string
{
	/**
	 *       Removes all instances of the remove string in the input string.
	 *
	 *       @param input The string that will be checked for instances of remove
	 *       string
	 *
	 *       @param remove The string that will be removed from the input string.
	 *
	 *       @returns A String with the remove string removed.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function remove(input:String, remove:String):String
	{
		return replace(input, remove, "");
	}
}