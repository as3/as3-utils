package utils.array
{
	/**
	   Returns every element that matches <code>match</code> for the property <code>key</code>.

	   @param inArray: Array to search for object with <code>key</code> that matches <code>match</code>.
	   @param key: Name of the property to match.
	   @param match: Value to match against.
	   @return Returns all the matched elements.
	 */
	public function getItemsByKey(inArray:Array, key:String, match:*):Array
	{
		var t:Array = new Array();

		for each (var item:* in inArray)
			if (item[key] == match)
				t.push(item);

		return t;
	}
}