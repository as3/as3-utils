package utils.type
{
	import flash.display.DisplayObject;
	import flash.utils.getQualifiedClassName;

	/**
	 *   Get the class of a display object
	 *   @param obj Object to get the class of
	 *   @return The class of the given object or null if the class cannot be
	 *           determined
	 *   @author Jackson Dunstan
	 */
	public function getDisplayObjectClass(obj:DisplayObject):Class
	{
		try
		{
			return Class(obj.loaderInfo.applicationDomain.getDefinition(getQualifiedClassName(obj)));
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