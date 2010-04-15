package utils.range
{
	/**
	 * Check if a number is in range.
	 */
	public function isInRange(n:Number, min:Number, max:Number, blacklist:Array = null):Boolean
	{
		if (!blacklist)
			blacklist = new Array();
		if (blacklist.length > 0)
		{
			for (var i:String in blacklist)
				if (n == blacklist[i])
					return false;
		}
		return (n >= min && n <= max);
	}
}