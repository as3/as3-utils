package utils.object
{
	/**
	 * Creates an instance of the given Class, 
	 * optionally passing arguments to the constructor, 
	 * and then decorating with properties.
	 * 
	 * @param classToInstantiate Class to create an instance of. 
	 * @param constructorArguments Array of arguments to pass to the Class constructor. 
	 * @returns An instance of <code>classToInstantiate</code>
	 * 
	 * @see utils.object#createInstance
	 * @see utils.object#merge
	 * 
	 * @example
	 * <listing version="3.0">
	 * 	var sprite:Sprite = create(Sprite, null, { x: 50, y: 100 });
	 * </listing>
	 * 
	 * @author drewbourne   
	 */
	public function create(classToInstantiate:Class, 
						   constructorArguments:Array = null, 
						   properties:Object = null):Object
	{
		return merge(createInstance(classToInstantiate, constructorArguments), properties);
	}
}