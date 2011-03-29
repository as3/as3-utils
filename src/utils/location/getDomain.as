package utils.location {
	import flash.display.DisplayObject;



	/**
	 * Detects MovieClip domain location.
	 * Function does not return folder path or file name. The method also treats "www" and sans "www" as the same; if "www" is present method does not return it.
	 * Example code:
	 *      <pre>
	 *          trace(getDomain(_root));
	 *      </pre>
	 * @param location MovieClip to get location of
	 * @return Full domain (including sub-domains) of MovieClip location
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function getDomain(location:DisplayObject):String {
		var baseUrl:String = location.loaderInfo.url.split("://")[1].split("/")[0];
		return (baseUrl.substr(0, 4) == "www.") ? baseUrl.substr(4) : baseUrl;
	}
}
