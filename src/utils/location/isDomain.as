package utils.location {
	import flash.display.DisplayObject;



	/**
	 * Detects if MovieClip embed location matches passed domain.
	 * Check for domain:
	 *      <pre>
	 *          trace(isDomain(_root, "google.com"));
	 *          trace(isDomain(_root, "bbc.co.uk"));
	 *      </pre>
	 * You can even check for subdomains:
	 *      <pre>
	 *          trace(isDomain(_root, "subdomain.aaronclinger.com"))
	 *      </pre>
	 * @param location MovieClip to compare location of
	 * @param domain Web domain
	 * @return true if file's embed location matched passed domain
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isDomain(location:DisplayObject, domain:String):Boolean {
		return getDomain(location).slice(-domain.length) == domain;
	}
}
