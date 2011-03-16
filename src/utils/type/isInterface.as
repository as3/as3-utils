package utils.type {
	/**
	 * Returns whether the passed in Class object is an interface.
	 *
	 * @param clazz the class to check
	 * @return true if the clazz is an interface; false if not
	 */
	public function isInterface(clazz:Class):Boolean {
		return (clazz == Object) ? false : (describeType(clazz).factory.extendsClass.length() == 0);
	}
}
