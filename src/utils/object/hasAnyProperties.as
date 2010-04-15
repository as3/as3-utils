package utils.object
{
	/**
	 *   Check if an object has any properties
	 *   @param obj Object to check for properties
	 *   @return If the specified object has any properties. If the
	 *           specified object is null, this is false.
	 *   @author Jackson Dunstan
	 */
	public function hasAnyProperties(obj:Object):Boolean
	{
		for each (var prop:Object in obj)
		{
			return true;
		}
		return false;
	}
}