package utils.load
{
	import flash.display.LoaderInfo;
	import flash.errors.IOError;
	import flash.external.ExternalInterface;

	/**
	 * Ensures that the domain that loaded the app is from an approved list of domains.
	 *
	 * @example <listing version="3.0">
	 * var approvedDomains:Array = [".*\.example\.com", ".*\.foo\.com", ".*\.me\.mysite\.com"];
	 * try {
	 * 	var testPassed:Boolean = checkDomain(this.loaderInfo, approvedDomains);
	 * } catch (e:IOError) {
	 * 	// Domain check didn't pass. Stop the application.
	 * } 
	 * // If there wasn't an error, continue the application.
	 * </listing>
	 * 
	 * @throws IOError If the domain isn't allowed.
	 *  
	 * @param loaderInfo The LoaderInfo object for the main app. 
	 * 					 This would probably be your application's main class' loaderInfo.
	 * @param allowedDomains An array of approved domains as RegExp strings. e.g. ".*\.example.com"
	 * @return Boolean True if domain check passed.
	 * 
	 * @author Mims H. Wright
	 */
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
			throw new IOError("You are not permitted to load this file from this location " + url);
			return false;
		} else {
			// domain okay, proceed
			return true;
		}
	}
}