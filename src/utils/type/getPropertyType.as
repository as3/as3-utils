package utils.type
{
	import flash.utils.getDefinitionByName;

	/**
	 * Determines the property type without accessing the property directly.
	 * Evaluation is based on the property definition and not by its value.
	 *
	 * @param	value			An object or class containing the property
	 * 							definition to evaluate.
	 * @param	property		The name of the property to be evaluated
	 *
	 * @return					The class definition of the property type,
	 * 							as described by the property definition, or
	 * 							null if no definition was found.
	 */
	public function getPropertyType(value:Object, property:String):Class
	{
		if (!(value is Class) && !(property in value))
		{
			return null;
		}

		// retrieve the correct property from the property list
		var propList:XMLList = describeProperties(value).(@name == property);

		return (propList.length() > 0) ? getDefinitionByName(propList[0].@type) as Class : null;
	}
}