package utils.type
{
	/**
	 * Targeted reflection describing an object's inheritance, including
	 * extended classes and implemented interfaces.
	 *
	 * @param	value			The object or class to introspect.
	 *
	 * @return					A list of XML inheritance descriptions.
	 */
	public function describeInheritance(value:Object):XMLList
	{
		return describeType(value).factory.*.(localName() == "extendsClass" || localName() == "implementsInterface");
	}
}