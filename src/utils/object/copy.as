package utils.object
{
	/**
	 *   Copy an object
	 *   @param obj Object to copy
	 *   @param into (optional) Object to copy into. If null, a new object
	 *                is created.
	 *   @return A one-level deep copy of the object or null if the argument
	 *           is null
	 *   @author Jackson Dunstan
	 */
	public function copy(obj:Object, into:Object = null):Object
	{
		if (into == null)
		{
			into = {};
		}
		if (obj != null)
		{
			for (var o:Object in obj)
			{
				into[o] = obj[o];
			}
		}
		return into;
	}
}