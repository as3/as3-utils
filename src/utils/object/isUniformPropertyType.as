package utils.object
{
	/**
	 *   Check if the properties of an object are all the same
	 *   @param obj Object whose properties should be checked
	 *   @param type Type to check the object's properties against
	 *   @return If all of the properties of the specified object are of the
	 *           specified type
	 *   @author Jackson Dunstan
	 */
	public function isUniformPropertyType(obj:Object, type:Class):Boolean
	{
		for each (var prop:Object in obj)
		{
			if (!(prop is type))
			{
				return false;
			}
		}
		return true;
	}
}