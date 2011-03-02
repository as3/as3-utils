package utils.location {
	import flash.system.Capabilities;



	/**
	 * Determines if the runtime environment is an Air application.
	 * @return true if the runtime environment is an Air application
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function get isAirApplication():Boolean {
		return Capabilities.playerType == "Desktop";
	}
}
