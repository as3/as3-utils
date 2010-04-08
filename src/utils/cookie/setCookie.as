package utils.cookie
{
	import flash.external.ExternalInterface;

	public function setCookie(cookieName:String, cookieValue:String):void
	{
		var js:String = "function sc(){";
		js += "var c = escape('" + cookieName + "') + '=' + escape('" + cookieValue + "') + '; path=/';";
		js += "document.cookie = c;";
		js += "}";
		ExternalInterface.call(js);
	}
}