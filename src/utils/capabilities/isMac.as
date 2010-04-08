package utils.capabilities
{
	import flash.system.Capabilities;

	/**
	 * Indicates whether the running OS is a Mac
	 * @return
	 */
	public function isMac():Boolean
	{
		return Capabilities.os.toLowerCase().indexOf("mac os") != -1;
	}
}