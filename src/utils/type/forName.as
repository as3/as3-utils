package utils.type {
	import flash.system.ApplicationDomain;



	/**
	 * Returns a <code>Class</code> object that corresponds with the given
	 * name. If no corresponding class was found in the applicationdomain tree, a
	 * <code>ClassNotFoundError</code> will be thrown.
	 * @param name the name from which to return the class
	 * @param applicationDomain the optional applicationdomain where the instance's class resides
	 * @return the <code>Class</code> that corresponds with the given name
	 */
	public function forName(name:String, applicationDomain:ApplicationDomain = null):Class {
		applicationDomain = (applicationDomain == null) ? ApplicationDomain.currentDomain : applicationDomain;

		var result:Class;

		if(!applicationDomain) {
			applicationDomain = ApplicationDomain.currentDomain;
		}

		while(!applicationDomain.hasDefinition(name)) {
			if(applicationDomain.parentDomain) {
				applicationDomain = applicationDomain.parentDomain;
			}
			else {
				break;
			}
		}

		try {
			result = applicationDomain.getDefinition(name) as Class;
		}
		catch (e:ReferenceError) {
			throw new Error("A class with the name '" + name + "' could not be found.");
		}

		return result;
	}
}
