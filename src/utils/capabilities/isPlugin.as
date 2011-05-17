package utils.capabilities {
	import flash.system.Capabilities;



	/**
	 * Determines if the SWF is running in a browser plug-in.
	 * @return true if SWF is running in the Flash Player browser plug-in
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function isPlugin():Boolean {
		return Capabilities.playerType == "PlugIn" || Capabilities.playerType == "ActiveX";
	}
}
