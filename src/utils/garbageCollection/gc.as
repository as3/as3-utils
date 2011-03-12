package utils.garbageCollection
{
	import flash.net.LocalConnection;

	// TODO: Needs documentation
	public function gc():void
	{
		try
		{
			new LocalConnection().connect("gc");
			new LocalConnection().connect("gc");
		}
		catch (e:Error)
		{
			var shouldTouchHere:Boolean = true;
		}
	}
}