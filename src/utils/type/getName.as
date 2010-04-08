package utils.type
{
	/**
	 * Returns the name of the given class.
	 *
	 * @param clazz the class to get the name from
	 *
	 * @return the name of the class
	 */
	public function getName(clazz:Class):String
	{
		return getNameFromFullyQualifiedName(getFullyQualifiedName(clazz));
	}
}