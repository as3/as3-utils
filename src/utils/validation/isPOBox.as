package utils.validation
{
	/**
	 * Check if address is a Post Office Box
	 */
	public function isPOBox(address:String):Boolean
	{
		var look:Array = [ "PO ", "P O", "P.O", "P. O", "p o", "p.o", "p. o", "Box", "Post Office", "post office" ];
		var len:Number = look.length;
		for (var i:int = 0; i < len; i++)
		{
			if (address.indexOf(look[i]) != -1)
			{
				return true;
			}
		}
		return false;
	}
}