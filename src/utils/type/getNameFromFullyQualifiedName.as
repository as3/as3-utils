package utils.type
{
	/**
	 * Returns the name of the class or interface, based on the given fully
	 * qualified class or interface name.
	 *
	 * @param fullyQualifiedName the fully qualified name of the class or interface
	 *
	 * @return the name of the class or interface
	 */
	public function getNameFromFullyQualifiedName(fullyQualifiedName:String):String
	{
		var result:String = "";
		var startIndex:int = fullyQualifiedName.indexOf(PACKAGE_CLASS_SEPARATOR);

		if (startIndex == -1)
		{
			result = fullyQualifiedName;
		}
		else
		{
			result = fullyQualifiedName.substring(startIndex + PACKAGE_CLASS_SEPARATOR.length, fullyQualifiedName.length);
		}
		return result;
	}
}