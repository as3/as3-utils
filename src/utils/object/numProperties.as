package utils.object
{
	/**
	 *   Count the properties in an object
	 *   @param obj Object to count the properties of
	 *   @return The number of properties in the specified object. If the
	 *           specified object is null, this is 0.
	 *   @author Jackson Dunstan
	 */
	public function numProperties(obj:Object):int
	{
		var count:int = 0;
		for each (var prop:Object in obj)
		{
			count++;
		}
		return count;
	}
}