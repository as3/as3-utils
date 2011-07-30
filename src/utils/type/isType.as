package utils.type
{
	import flash.utils.getQualifiedClassName;
	/**
	 * Evaluates whether an object or class is derived from a specific
	 * data type, class or interface. The isType() method is comparable to
	 * ActionScript's <code>is</code> operator except that it also makes
	 * class to class evaluations.
	 *
	 * @param	value			The object or class to evaluate.
	 * @param	type			The data type to check against.
	 *
	 * @return					True if the object or class is derived from
	 * 							the data type.
	 */
	public function isType(value:Object, type:Class):Boolean
	{
		if (!(value is Class))
		{
			return value is type;
		}

		if (value == type)
		{
			return true;
		}

		var inheritance:XMLList = describeInheritance(value);
		return Boolean(inheritance.(@type == getQualifiedClassName(type)).length() > 0);
	}
}