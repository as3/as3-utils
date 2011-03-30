package utils.string {



	/**
	 * Extreme Trim: remove whitespace, line feeds, carriage returns from string
	 */
	public function xtrim(str:String = null):String {
		str = (!str) ? "" : str;

		var o:String = new String();
		var TAB:Number = 9;
		var LINEFEED:Number = 10;
		var CARRIAGE:Number = 13;
		var SPACE:Number = 32;

		for(var i:int = 0; i < str.length; i++) {
			if(str.charCodeAt(i) != SPACE && str.charCodeAt(i) != CARRIAGE && str.charCodeAt(i) != LINEFEED && str.charCodeAt(i) != TAB) {
				o += str.charAt(i);
			}
		}

		return o;
	}
}
