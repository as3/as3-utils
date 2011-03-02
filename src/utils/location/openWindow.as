package utils.location {
	import flash.external.ExternalInterface;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;



	/**
	 * Open a new browser window and prevent browser from blocking it.
	 * Based on script by Sergey Kovalyov (http://skovalyov.blogspot.com/2007/01/how-to-prevent-pop-up-blocking-in.html)
	 * Based on script by Jason the Saj (http://thesaj.wordpress.com/2008/02/12/the-nightmare-that-is-_blank-part-ii-help)
	 * Original: http://apdevblog.com/problems-using-navigatetourl
	 * You also have to set the wmode inside your containing html file to "opaque" and the allowScriptAccess to "always".
	 * @param url url to be opened
	 * @param window Window target
	 * @param features Additional features for window.open function
	 * @author Sergey Kovalyov
	 * @author Jason the Saj
	 * @author Aron Woost (<a href="http://apdevblog.com">apdevblog.com</a>)
	 * @author Philipp Kyeck (<a href="http://apdevblog.com">apdevblog.com</a>)
	 */
	public function openWindow(url:String, window:String = "_blank", features:String = ""):void {
		switch(getLocationName()) {
			case locationNames.BROWSER_FIREFOX:
				ExternalInterface.call("window.open", url, window, features);
				break;

			case locationNames.BROWSER_IE:
				ExternalInterface.call("function setWMWindow() {window.open('" + url + "');}");
				break;

			default:
				// otherwise, use Flash's native 'navigateToURL()' function to pop-window.
				// this is necessary because Safari 3 no longer works with the above ExternalInterface work-a-round.
				navigateToURL(new URLRequest(url), window);
		}
	}
}
