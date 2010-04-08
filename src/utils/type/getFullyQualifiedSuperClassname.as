package utils.type
{
	import flash.utils.getQualifiedSuperclassName;

	/**
	 * Returns the fully qualified name of the given class' superclass.
	 *
	 * @param clazz the class to get its superclass' name from
	 * @param replaceColons whether the double colons "::" should be replaced by a dot "."
	 *             the default is false
	 *
	 * @return the fully qualified name of the class' superclass
	 */
	public function getFullyQualifiedSuperClassname(clazz:Class, replaceColons:Boolean = false):String
	{
		var result:String = getQualifiedSuperclassName(clazz);

		if (replaceColons)
		{
			result = convertFullyQualifiedName(result);
		}
		return result;
	}
}