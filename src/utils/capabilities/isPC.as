package utils.capabilities
{
	import flash.system.Capabilities;

	/**
	 * Indicates whether the running OS is a PC
	 * @return
	 */
	public function isPC():Boolean
	{
		return Capabilities.os.toLowerCase().indexOf("mac os") == -1;
	}
}