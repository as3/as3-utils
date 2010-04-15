package utils.type
{
	import flash.net.registerClassAlias;
	import flash.utils.getQualifiedClassName;

	/**
	 * Ensures a class has a registered alias for object serialization and
	 * remoting. If the class doesn't yet have an alias it will be
	 * registered with it's full qualified class name, for example:
	 * <code>flight.utils.Type</code>. If the class has already been
	 * assigned an alias then its previous registration will be honored.
	 *
	 * @param	value			The object or class to register.
	 *
	 * @return					True if the registration was successful,
	 * 							otherwise the object already has an alias.
	 *
	 * @see		flash.net#registerClassAlias
	 */
	public function registerType(value:Object):Boolean
	{
		if (!(value is Class))
		{
			value = getType(value);
		}

		// if not already registered
		var alias:String = describeType(value).@alias;
		if (alias.length)
		{
			return false;
		}

		registerClassAlias(getQualifiedClassName(value).split("::").join("."), value as Class);
		return true;
	}
}