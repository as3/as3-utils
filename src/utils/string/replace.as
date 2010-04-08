package utils.string
{
	/**
	 *       Replaces all instances of the replace string in the input string
	 *       with the replaceWith string.
	 *
	 *       @param input The string that instances of replace string will be
	 *       replaces with removeWith string.
	 *
	 *       @param replace The string that will be replaced by instances of
	 *       the replaceWith string.
	 *
	 *       @param replaceWith The string that will replace instances of replace
	 *       string.
	 *
	 *       @returns A new String with the replace string replaced with the
	 *       replaceWith string.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function replace(input:String, replace:String, replaceWith:String):String
	{
		return input.split(replace).join(replaceWith);
	}
}