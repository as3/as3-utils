package utils.load
{
	import flash.display.LoaderInfo
	
	/**
	 * Ensures that the domain that loaded the app is from an approved list of domains.
	 * 
	 * @param loaderInfo The LoaderInfo object for the main app. 
	 * 					 This would probably be your application's main class' loaderInfo.
	 * @param allowedDomains An array of approved domains as RegExp strings. e.g. ".*\.example.com"
	 * 
	 * @return Boolean True if the domain check passed and false if it failed.
	 * 
	 * @author Mims H. Wright
	 */
	// todo: Should this throw an error if it fails?
	public function checkDomain(loaderInfo:LoaderInfo, approvedDomains:Array):Boolean {
		var url:String;
		if (ExternalInterface.available) {
			url = ExternalInterface.call("window.location.href.toString");
		} else {
			url = loaderInfo.loaderURL;
		}
		
		var allowedDomainsString:String = approvedDomains.join("|");
		var allowedPattern:String = "(^"+allowedDomainsString+"/?)";
		
		var domainCheck:RegExp = new RegExp(allowedPattern,"i");
		var domainCheckResult:Object = domainCheck.exec(url);
		if (domainCheckResult == null) {
			// domain check failed, abort application
			return false;
		} else {
			// domain okay, proceed
			return true;
		}
	}
}