package utils.type
{
	/**
	 * Primary reflection method, producing an XML description of the object
	 * or class specified. Results are cached internally for performance.
	 *
	 * @param	value			The object or class to introspect.
	 * @param	refreshCache	Forces a new description to be generated,
	 * 							useful only when a class alias has changed.
	 *
	 * @return					An XML description, which format is
	 * 							documented in the <code>flash.utils</code>
	 * 							package.
	 *
	 * @see		flash.utils#describeType
	 */
	import flash.utils.describeType;

	public function describeType(value:Object, refreshCache:Boolean = false):XML
	{
		if (!(value is Class))
		{
			value = getType(value);
		}

		if (refreshCache || typeCache[value] == null)
		{
			typeCache[value] = flash.utils.describeType(value);
		}

		return typeCache[value];
	}
}