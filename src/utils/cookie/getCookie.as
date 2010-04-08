package utils.cookie
{
	import flash.external.ExternalInterface;

	public function getCookie(cookieName:String):String
	{
		var r:String = "";
		var search:String = cookieName + "=";
		var js:String = "function get_cookie(){return document.cookie;}";
		var o:Object = ExternalInterface.call(js);
		var cookieVariable:String = o.toString();

		if (cookieVariable.length > 0)
		{
			var offset:int = cookieVariable.indexOf(search);
			if (offset != -1)
			{
				offset += search.length;
				var end:int = cookieVariable.indexOf(";", offset);
				if (end == -1)
					end = cookieVariable.length;
				r = unescape(cookieVariable.substring(offset, end));
			}
		}
		return r;
	}
}