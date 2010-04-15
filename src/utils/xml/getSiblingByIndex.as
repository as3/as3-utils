package utils.xml
{
	public function getSiblingByIndex(x:XML, count:int):XML
	{
		var out:XML;

		try
		{
			out = x.parent().children()[x.childIndex() + count];
		}
		catch (e:Error)
		{
			return null;
		}

		return out;
	}
}