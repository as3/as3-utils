package utils.type {



	/**
	 * Targeted reflection describing an object's properties, including both
	 * accessor (getter/setters) and pure properties.
	 * @param	value			The object or class to introspect.
	 * @param	metadataType	Optional filter to return only those
	 *							 property descriptions containing the
	 *							 specified metadata.
	 * @return					A list of XML property descriptions.
	 */
	public function describeProperties(value:Object, metadataType:String = null):XMLList {
		var properties:XMLList = describeType(value).factory.*.(localName() == "accessor" || localName() == "variable");

		return (metadataType == null) ? properties : properties.(child("metadata").(@name == metadataType).length() > 0);
	}
}
