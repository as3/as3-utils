package utils.location {
	import flash.system.Capabilities;



	/**
	 * Determines if the SWF is running in the IDE.
	 * @return true if SWF is running in the Flash Player version used by the external player or test movie mode
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function get isIDE():Boolean {
		return Capabilities.playerType == "External";
	}
}
