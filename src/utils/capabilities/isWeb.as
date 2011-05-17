package utils.capabilities {
	import flash.display.DisplayObject;



	/**
	 * Determines if the SWF is being served on the internet.
	 * Example code:
	 *      <pre>
	 *          trace(isWeb(_root));
	 *      </pre>
	 * @param location DisplayObject to get location of
	 * @return true if SWF is being served on the internet
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isWeb(location:DisplayObject):Boolean {
		return location.loaderInfo.url.substr(0, 4) == "http";
	}
}
