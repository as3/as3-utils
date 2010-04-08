package utils.type
{
	import flash.utils.getQualifiedClassName;

	/**
	 * Returns the fully qualified name of the given class.
	 *
	 * @param clazz the class to get the name from
	 * @param replaceColons whether the double colons "::" should be replaced by a dot "."
	 *             the default is false
	 *
	 * @return the fully qualified name of the class
	 */
	public function getFullyQualifiedName(clazz:Class, replaceColons:Boolean = false):String
	{
		var result:String = getQualifiedClassName(clazz);

		if (replaceColons)
		{
			result = convertFullyQualifiedName(result);
		}
		return result;
	}
}