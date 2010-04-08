package utils.string
{
	/**
	 * Encode HTML.
	 */
	public function htmlEncode(s:String):String
	{
		s = replace(s, " ", "&nbsp;");
		s = replace(s, "&", "&amp;");
		s = replace(s, "<", "&lt;");
		s = replace(s, ">", "&gt;");
		s = replace(s, "™", '&trade;');
		s = replace(s, "®", '&reg;');
		s = replace(s, "©", '&copy;');
		s = replace(s, "€", "&euro;");
		s = replace(s, "£", "&pound;");
		s = replace(s, "—", "&mdash;");
		s = replace(s, "–", "&ndash;");
		s = replace(s, "…", "&hellip;");
		s = replace(s, "†", "&dagger;");
		s = replace(s, "·", "&middot;");
		s = replace(s, "µ", "&micro;");
		s = replace(s, "«", "&laquo;");
		s = replace(s, "»", "&raquo;");
		s = replace(s, "•", "&bull;");
		s = replace(s, "°", "&deg;");
		s = replace(s, '"', "&quot;");
		return s;
	}
}