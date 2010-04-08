package utils.object
{
	/**
	 *   Convert the object to an array. Note that the order of the array is
	 *   undefined.
	 *   @param obj Object to convert
	 *   @return An array with all of the properties of the given object or
	 *           null if the given object is null
	 *   @author Jackson Dunstan
	 */
	public function toArray(obj:Object):Array
	{
		if (obj == null)
		{
			return null;
		}
		else
		{
			var ret:Array = [];
			for each (var prop:Object in obj)
			{
				ret.push(prop);
			}
			return ret;
		}
	}
}