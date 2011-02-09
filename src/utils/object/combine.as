package utils.object
{
    /**
     * Combines all of the properties from two objects into a single objects. Note that
     * duplicate properties will be overwritten by the values on the second parameter object.
     *
     * @param defaultVars
     * @param additionalVars
     * @return
     */
	public function combine(defaultVars:Object, additionalVars:Object):Object
	{
		var combinedObject:Object = {};
		var property:String;

		for (property in defaultVars)
		{
			combinedObject[property] = defaultVars[property];
		}

		for (property in additionalVars)
		{
			combinedObject[property] = additionalVars[property];
		}

		return combinedObject;
	}
}