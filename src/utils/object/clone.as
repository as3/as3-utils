package utils.object
{
	import flash.net.registerClassAlias;
	import flash.utils.ByteArray;
	import flash.utils.getQualifiedClassName;

	/**
	 * Creates a duplicate of the source object by storing it in a ByteArray and reading it back in, 
	 * The object will return untyped so you may need to cast it to the desired class. 
	 * AMF rules apply. Check out the documentation for more info.
	 * NOTE: This will not work if the object has any required parameters in the constructor.
	 * 
	 * @throws flash.errors.ArgumentError If the source's constructor requires any parameters.
	 * 
	 * @example 
	 * <listing version="3.0">
	 * 		var example:Example = new Example();
	 * 		var clone:Example = Cloner.clone(example) as Example;
	 * </listing>
	 * 
	 * @see flash.net#registerClassAlias()
	 * 
	 * @param source The object to duplicate.
	 * @param autoRegisterClassAlias Determines whether the class will be registered before cloning. 
	 * 								 Defaults to true, though advanced users may wish to register class aliases manually.
	 * @return * A duplicate of the source object.
	 * 
	 * @author Mims Wright
	 */
	public function clone(source:Object, autoRegisterClassAlias:Boolean = true):* {
		// automatically register the class so that the clone retains its class.
		if (autoRegisterClassAlias) registerClassAlias(getQualifiedClassName(source), source.constructor as Class);
		
		var copy:ByteArray = new ByteArray();
		copy.writeObject(source);
		copy.position = 0;
		return copy.readObject();
	}
}