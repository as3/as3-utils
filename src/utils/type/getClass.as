package utils.type
{
	import flash.display.DisplayObject;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	/**
	 *   Get the class of an object
	 *   @param obj Object to get the class of
	 *   @return The class of the given object or null if the class cannot be
	 *           determined
	 *   @author Jackson Dunstan
	 */
	public function getClass(obj:Object):Class
	{
		if (obj == null)
		{
			return null;
		}
		try
		{
			var className:String = getQualifiedClassName(obj);
			var ret:Class = Class(getDefinitionByName(className));
			if (ret == null && obj is DisplayObject)
			{
				ret = getDisplayObjectClass(DisplayObject(obj));
			}
			return ret;
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