package utils.type {
	import flash.system.ApplicationDomain;
	import flash.utils.getQualifiedClassName;



	/**
	 * Returns a <code>Class</code> object that corresponds with the given
	 * instance. If no corresponding class was found, a
	 * <code>ClassNotFoundError</code> will be thrown.
	 * @param instance the instance from which to return the class
	 * @param applicationDomain the optional applicationdomain where the instance's class resides
	 * @return the <code>Class</code> that corresponds with the given instance
	 */
	public function forInstance(instance:*, applicationDomain:ApplicationDomain = null):Class {
		applicationDomain = (applicationDomain == null) ? ApplicationDomain.currentDomain : applicationDomain;

		var className:String = getQualifiedClassName(instance);

		return forName(className, applicationDomain);
	}
}
