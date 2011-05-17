package utils.location {
	import flash.external.ExternalInterface;

	import utils.capabilities.isStandAlone;



	/**
	 * Return current location name.
	 * @return Current location name
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function getLocationName():String {
		var out:String;
		var browserAgent:String;

		if(isStandAlone()) {
			out = locationNames.STANDALONE_PLAYER;
		}

		else {
			if(ExternalInterface.available) {
				// uses external interface to reach out to browser and grab browser useragent info.
				browserAgent = ExternalInterface.call("function getBrowser(){return navigator.userAgent;}");

				// determines brand of browser using a find index. If not found indexOf returns (-1).
				// noinspection IfStatementWithTooManyBranchesJS
				if(browserAgent != null && browserAgent.indexOf("Firefox") >= 0) {
					out = locationNames.BROWSER_FIREFOX;
				} else if(browserAgent != null && browserAgent.indexOf("Safari") >= 0) {
					out = locationNames.BROWSER_SAFARI;
				} else if(browserAgent != null && browserAgent.indexOf("MSIE") >= 0) {
					out = locationNames.BROWSER_IE;
				} else if(browserAgent != null && browserAgent.indexOf("Opera") >= 0) {
					out = locationNames.BROWSER_OPERA;
				}
				else {
					out = locationNames.BROWSER_UNDEFINED;
				}
			}

			else {
				// standalone player
				out = locationNames.BROWSER_UNDEFINED;
			}
		}

		return out;
	}
}
