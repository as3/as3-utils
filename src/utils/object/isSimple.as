package utils.object
{
	/**
	 * Returns whether or not the given object is simple data type.
	 *
	 * @param the object to check
	 * @return true if the given object is a simple data type; false if not
	 */
	public function isSimple(object:Object):Boolean
	{
		switch (typeof(object))
		{
			case "number":
			case "string":
			case "boolean":
				return true;
			case "object":
				return (object is Date) || (object is Array);
		}

		return false;
	}
}