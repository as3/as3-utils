package utils.type
{
	/**
	 * Converts the double colon (::) in a fully qualified class name to a dot (.)
	 */
	public function convertFullyQualifiedName(className:String):String
	{
		return className.replace(PACKAGE_CLASS_SEPARATOR, ".");
	}
}