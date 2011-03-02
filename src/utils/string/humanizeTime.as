package utils.string {



	/**
	 * Convert seconds to a humanized String.
	 * @param seconds Seconds
	 * @return Humanized String
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function humanizeTime(seconds:uint, formatSeconds:String = "|:?=%d seconds|:1=jednu second",
	                             formatMinutes:String = "|:?=%d minutes|:1=%d minute", formatHours:String = "|:?=%d hours|:1=%d hour",
	                             formatDays:String = "|:?=%d days|:1=%d day"):String {
		var days:int = int(seconds / 86400);
		var hours:int = int((seconds - days * 86400) / 3600);
		var minutes:int = int(((seconds - days * 86400) - hours * 3600) / 60);
		var secondsTrimmed:int = seconds - (days * 86400) - (hours * 3600) - (minutes * 60);

		var out:String;

		if(!out && seconds < 60) {
			// less than a minute
			out = convertCounterString(formatSeconds, seconds);
		}

		if(!out && seconds < 60 * 60) {
			// minute to one hour
			if(seconds % 60 === 0) {
				out = convertCounterString(formatMinutes, minutes);
			} else {
				out = convertCounterString(formatMinutes, minutes) + ", " + convertCounterString(formatSeconds, secondsTrimmed);
			}
		}

		if(!out && seconds < 60 * 60 * 24) {
			// hour to a day
			if(minutes % 60 === 0) {
				out = convertCounterString(formatHours, hours);
			} else {
				out = convertCounterString(formatHours, hours) + ", " + convertCounterString(formatMinutes, minutes);
			}
		}

		if(!out) {
			// days
			if(hours % 24 === 0) {
				out = convertCounterString(formatDays, days);
			} else {
				out = convertCounterString(formatDays, days) + ", " + convertCounterString(formatHours, hours);
			}
		}

		return out;
	}
}
