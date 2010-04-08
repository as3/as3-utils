package utils.type
{
	/**
	 * Returns the name of the given class' superclass.
	 *
	 * @param clazz the class to get the name of its superclass' from
	 *
	 * @return the name of the class' superclass
	 */
	public function getSuperClassName(clazz:Class):String
	{
		var fullyQualifiedName:String = getFullyQualifiedSuperClassname(clazz);
		var index:int = fullyQualifiedName.indexOf(PACKAGE_CLASS_SEPARATOR) + PACKAGE_CLASS_SEPARATOR.length;
		return fullyQualifiedName.substring(index, fullyQualifiedName.length);
	}
}