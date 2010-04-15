package utils.object
{
	/**
	 * Creates an instance of a given Class,
	 * optionally passing arguments to the constructor.
	 * 
	 * @param classToInstantiate Class to create an instance of.
	 * @param constructorArguments Array of arguments to pass to the Class constructor.
	 * 
	 * @return An instance of <code>classToInstantiate</code>
	 * 
	 * @throws ArgumentError When the number of <code>constructorArguments</code> is more than 10.
	 * 
	 * @see utils.object#create 
	 * 
	 * @example
	 * <listing version="3.0">
	 * 	var event:Event = createInstance(Event, [Event.COMPLETE, true, false]);
	 * </listing>
	 * 
	 * @author drewbourne
	 */
	public function createInstance(classToInstantiate:Class, constructorArguments:Array = null):Object
	{
		var args:Array = constructorArguments || [];
				
		switch (args.length) 
		{
			case 0: return new classToInstantiate();
			case 1: return new classToInstantiate(args[0]);
			case 2: return new classToInstantiate(args[0], args[1]);
			case 3: return new classToInstantiate(args[0], args[1], args[2]);
			case 4: return new classToInstantiate(args[0], args[1], args[2], args[3]);
			case 5: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4]);
			case 6: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4], args[5]);
			case 7: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
			case 8: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
			case 9: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]);
			case 10: return new classToInstantiate(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
			
			default: 
				throw new ArgumentError("Unable to instantiate:" + classToInstantiate + ", unsupported number of constructor arguments, received: " + args.join(', '));
		}		
	}
}