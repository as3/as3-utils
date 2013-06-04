package utils.garbageCollection
{
	import flash.net.LocalConnection;
	import flash.system.System;

	/**
     * To force an immediate GC
     * This will throw an error, so you’ll have to wrap it in a try/catch block.
     * 
     * @link	http://gskinner.com/blog/archives/2006/08/as3_resource_ma_2.html
     * @return	Boolean If GC clean something return true, false otherside
     */
	public function gc():Boolean
	{
		var currentMemory:uint = System.totalMemory;
		
		try
		{
			new LocalConnection().connect("gc");
			new LocalConnection().connect("gc");
		}
		catch (e:Error)
		{
			if ( currentMemory.toFixed() != System.totalMemory.toFixed() )
			{
				return true;
			}
		}
		
		return false;
	}
}
