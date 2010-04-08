package utils.dictionary
{
	import flash.utils.Dictionary;

	/**
	 *       Returns an Array of all values within the specified dictionary.
	 *
	 *       @param d The Dictionary instance whose values will be returned.
	 *
	 *       @return Array of values contained within the Dictionary
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function getValues(d:Dictionary):Array
	{
		var a:Array = new Array();

		for each (var value:Object in d)
		{
			a.push(value);
		}

		return a;
	}
}