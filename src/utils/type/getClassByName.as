package utils.type
{
	import flash.utils.getDefinitionByName;

	/**
	 *   Get a class by its fully-qualified name
	 *   @param className Fully-qualified name of the class
	 *   @return The class with the given name or null if none exists
	 *   @author Jackson Dunstan
	 */
	public function getClassByName(className:String):Class
	{
		try
		{
			return Class(getDefinitionByName(className));
		}
		catch (refErr:ReferenceError)
		{
			return null;
		}
		catch (typeErr:TypeError)
		{
			return null;
		}

		return null;
	}
}