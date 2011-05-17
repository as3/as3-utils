package utils.location {
	import flash.external.ExternalInterface;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;

	import utils.capabilities.isIDE;



	/**
	 * Simlifies navigateToURL by allowing you to either use a String or an URLRequest
	 * reference to the URL. This method also helps prevent pop-up blocking by trying to use
	 * openWindow() before calling navigateToURL.
	 * @param request A String or an URLRequest reference to the URL you wish to open/navigate to
	 * @param window Browser window or HTML frame in which to display the URL indicated by the request parameter
	 * @throws Error if you pass a value type other than a String or URLRequest to parameter request.
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function openURL(request:*, window:String = "_self" /* windowNames.WINDOW_SELF */):void {
		var r:* = request;

		if(r is String) {
			r = new URLRequest(r);
		} else if(!(r is URLRequest)) {
			throw new Error("request");
		}

		if(window == windowNames.WINDOW_BLANK && ExternalInterface.available && !isIDE() && request._data == null) {
			if(openWindow(r.url, window)) return
		}

		navigateToURL(r, window);
	}
}
