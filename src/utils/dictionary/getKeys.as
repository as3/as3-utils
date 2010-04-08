package utils.dictionary
{
	import flash.utils.Dictionary;

	/**
	 *       Returns an Array of all keys within the specified dictionary.
	 *
	 *       @param d The Dictionary instance whose keys will be returned.
	 *
	 *       @return Array of keys contained within the Dictionary
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function getKeys(d:Dictionary):Array
	{
		var a:Array = new Array();

		for (var key:Object in d)
		{
			a.push(key);
		}

		return a;
	}
}