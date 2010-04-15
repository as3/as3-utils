package utils.object
{
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