package utils.object
{
	/**
	   Creates an Array comprised of all the keys in an Object.

	   @param obj: Object in which to find keys.
	   @return Array containing all the string key names.
	 */
	public function getKeys(obj:Object):Array
	{
		var keys:Array = new Array();

		for (var i:String in obj)
			keys.push(i);

		return keys;
	}
}