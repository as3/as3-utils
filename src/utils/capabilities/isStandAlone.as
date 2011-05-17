package utils.capabilities {
	import flash.system.Capabilities;



	/**
	 * Determines if the SWF is running in the StandAlone player.
	 * @return true if SWF is running in the Flash StandAlone Player
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isStandAlone():Boolean {
		return Capabilities.playerType == "StandAlone";
	}
}
