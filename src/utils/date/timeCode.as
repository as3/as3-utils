package utils.date {



	/**
	 * Utility function for generating time code given a number seconds.
	 * @param sec Seconds
	 * @return Timecode
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function timeCode(sec:Number):String {
		var h:Number = Math.floor(sec / 3600);
		var m:Number = Math.floor((sec % 3600) / 60);
		var s:Number = Math.floor((sec % 3600) % 60);

		return (h == 0 ? "" : (h < 10 ? "0" + String(h) + ":" : String(h) + ":")) + (m < 10 ? "0" + String(m) : String(m)) + ":" + (s < 10 ? "0" + String(s) : String(s));
	}
}
