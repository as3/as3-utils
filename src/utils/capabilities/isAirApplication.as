package utils.capabilities {
	import flash.system.Capabilities;



	/**
	 * Determines if the runtime environment is an Air application.
	 * @return true if the runtime environment is an Air application
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isAirApplication():Boolean {
		return Capabilities.playerType == "Desktop";
	}
}
