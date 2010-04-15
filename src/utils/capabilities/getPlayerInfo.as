package utils.capabilities
{
	import flash.system.Capabilities;

	/**
	 * Returns a player and environment info string.
	 */
	public function getPlayerInfo():String
	{
		var debugger:String = (Capabilities.isDebugger) ? ' / Debugger' : '';
		var info:String =
			String("Flash Platform: " + Capabilities.version + " / " + Capabilities.playerType + debugger + " / " + Capabilities.os + " / " + Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY);
		return info;
	}
}