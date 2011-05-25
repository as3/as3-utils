package utils.date
{
	/** 
	 * Takes a Date object and returns a string in the format
	 * "X UNITS ago" where X is a number and UNITS is a unit of
	 * time. Also has some other strings like "yesterday".
	 * 
	 * @author Mims Wright (with thanks to John Resig)
	 * 
	 * @param date The date to convert to a past string.
	 * @param now Optional time to compare against. Default will be the present.
	 */ 
	public function getTimeElapsedString(date:Date, now:Date = null):String {
		
		const SEC_PER_MINUTE:int = 60;
		const SEC_PER_HOUR:int = SEC_PER_MINUTE * 60;
		const SEC_PER_DAY:int = SEC_PER_HOUR * 24;
		const SEC_PER_WEEK:int = SEC_PER_DAY * 7;
		const SEC_PER_MONTH:int = SEC_PER_DAY * 30;
		const SEC_PER_YEAR:int = SEC_PER_MONTH * 12; 
		
		// if now isn't defined, make it a new Date object (the present)
		if (!now) { now = new Date(); }
		
		// don't use secondsElapsed here because the values are 
		// huge so they use uints and are never negative
		if (now.time < date.time) { return "in the future"; }
		
		// get the difference in seconds between the two values. 
		var secondsElapsed:uint = Math.floor((now.time - date.time) / 1000);

		
		// seconds
		if (secondsElapsed < SEC_PER_MINUTE) { return "just now"; }
		
		// minutes
		if (secondsElapsed < SEC_PER_HOUR) { 
			var minutes:int = int(secondsElapsed / SEC_PER_MINUTE);
			return formatAgoString(minutes, "minute");
		}
		
		// hours
		if (secondsElapsed < SEC_PER_DAY) { 
			var hours:int = int(secondsElapsed / SEC_PER_HOUR);
			return formatAgoString(hours, "hour");
		}
		
		// days
		if (secondsElapsed < SEC_PER_WEEK) { 
			var days:int = int(secondsElapsed / SEC_PER_DAY);
			if (days == 1) { return "yesterday"; }
			
			return formatAgoString(days, "day");
		}
		
		// weeks
		if (secondsElapsed < SEC_PER_MONTH) { 
			var weeks:int = int(secondsElapsed / SEC_PER_WEEK);
			return formatAgoString(weeks, "week");
		}
		
		// months
		if (secondsElapsed < SEC_PER_YEAR) { 
			var months:int = int(secondsElapsed / SEC_PER_MONTH);
			return formatAgoString(months, "month");
		}
		
		// years
		return "more than a year ago";
		
		// Returns a string in the format "count unit(s) ago"
		function formatAgoString(count:int, unit:String):String {
			return count + " " + unit + (count > 1 ? "s" : "") + " ago";
		}
	}
}