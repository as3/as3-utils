package utils.array
{
	/**
	   Returns the first element that matches <code>match</code> for the property <code>key</code>.

	   @param inArray: Array to search for an element with a <code>key</code> that matches <code>match</code>.
	   @param key: Name of the property to match.
	   @param match: Value to match against.
	   @return Returns matched <code>Object</code>; otherwise <code>null</code>.
	 */
	public function getItemByKey(inArray:Array, key:String, match:*):*
	{
		for each (var item:* in inArray)
			if (item[key] == match)
				return item;

		return null;
	}
}