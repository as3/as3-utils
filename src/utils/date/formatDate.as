package utils.date {
	import utils.conversion.minutesToSeconds;
	import utils.number.addLeadingZeroes;
	import utils.number.format;
	import utils.number.getOrdinalSuffix;



	/**
	 * Formats a Date object for display. Acts almost identically to the PHP date() function.
	 * You can prevent a recognized character in the format string from being expanded by escaping it with a preceding ^.
	 * <table border="1">
	 *      <tr>
	 *          <th style="width:150px;">Format character</th>
	 *          <th>Description</th>
	 *          <th style="width:200px;">Example returned values</th>
	 *      </tr>
	 *      <tr>
	 *          <td>d</td>
	 *          <td>Day of the month, 2 digits with leading zeros.</td>
	 *          <td>01 to 31</td>
	 *      </tr>
	 *      <tr>
	 *          <td>D</td>
	 *          <td>A textual representation of a day, three letters.</td>
	 *          <td>Mon through Sun</td>
	 *      </tr>
	 *      <tr>
	 *          <td>j</td>
	 *          <td>Day of the month without leading zeros.</td>
	 *          <td>1 to 31</td>
	 *      </tr>
	 *      <tr>
	 *          <td>l</td>
	 *          <td>A full textual representation of the day of the week.</td>
	 *          <td>Sunday through Saturday</td>
	 *      </tr>
	 *      <tr>
	 *          <td>N</td>
	 *          <td>ISO-8601 numeric representation of the day of the week.</td>
	 *          <td>1 (for Monday) through 7 (for Sunday)</td>
	 *      </tr>
	 *      <tr>
	 *          <td>S</td>
	 *          <td>English ordinal suffix for the day of the month, 2 characters.</td>
	 *          <td>st, nd, rd or th</td>
	 *      </tr>
	 *      <tr>
	 *          <td>w</td>
	 *          <td>Numeric representation of the day of the week.</td>
	 *          <td>0 (for Sunday) through 6 (for Saturday)</td>
	 *      </tr>
	 *      <tr>
	 *          <td>z</td>
	 *          <td>The day of the year (starting from 0).</td>
	 *          <td>0 through 365</td>
	 *      </tr>
	 *      <tr>
	 *          <td>W</td>
	 *          <td>ISO-8601 week number of year, weeks starting on Monday.</td>
	 *          <td>Example: 42 (the 42nd week in the year)</td>
	 *      </tr>
	 *      <tr>
	 *          <td>F</td>
	 *          <td>A full textual representation of a month, such as January or March.</td>
	 *          <td>January through December</td>
	 *      </tr>
	 *      <tr>
	 *          <td>m</td>
	 *          <td>Numeric representation of a month, with leading zeros.</td>
	 *          <td>01 through 12</td>
	 *      </tr>
	 *      <tr>
	 *          <td>M</td>
	 *          <td>A short textual representation of a month, three letters.</td>
	 *          <td>Jan through Dec</td>
	 *      </tr>
	 *      <tr>
	 *          <td>n</td>
	 *          <td>Numeric representation of a month, without leading zeros.</td>
	 *          <td>1 through 12</td>
	 *      </tr>
	 *      <tr>
	 *          <td>t</td>
	 *          <td>Number of days in the given month.</td>
	 *          <td>28 through 31</td>
	 *      </tr>
	 *      <tr>
	 *          <td>L</td>
	 *          <td>Determines if it is a leap year.</td>
	 *          <td>1 if it is a leap year, 0 otherwise</td>
	 *      </tr>
	 *      <tr>
	 *          <td>o or Y</td>
	 *          <td>A full numeric representation of a year, 4 digits.</td>
	 *          <td>Examples: 1999 or 2003</td>
	 *      </tr>
	 *      <tr>
	 *          <td>y</td>
	 *          <td>A two digit representation of a year.</td>
	 *          <td>Examples: 99 or 03</td>
	 *      </tr>
	 *      <tr>
	 *          <td>a</td>
	 *          <td>Lowercase Ante meridiem and Post meridiem.</td>
	 *          <td>am or pm</td>
	 *      </tr>
	 *      <tr>
	 *          <td>A</td>
	 *          <td>Uppercase Ante meridiem and Post meridiem.</td>
	 *          <td>AM or PM</td>
	 *      </tr>
	 *      <tr>
	 *          <td>B</td>
	 *          <td>Swatch Internet time.</td>
	 *          <td>000 through 999</td>
	 *      </tr>
	 *      <tr>
	 *          <td>g</td>
	 *          <td>12-hour format of an hour without leading zeros.</td>
	 *          <td>1 through 12</td>
	 *      </tr>
	 *      <tr>
	 *          <td>G</td>
	 *          <td>24-hour format of an hour without leading zeros.</td>
	 *          <td>0 through 23</td>
	 *      </tr>
	 *      <tr>
	 *          <td>h</td>
	 *          <td>12-hour format of an hour with leading zeros.</td>
	 *          <td>01 through 12</td>
	 *      </tr>
	 *      <tr>
	 *          <td>H</td>
	 *          <td>24-hour format of an hour with leading zeros.</td>
	 *          <td>00 through 23</td>
	 *      </tr>
	 *      <tr>
	 *          <td>i</td>
	 *          <td>Minutes with leading zeros.</td>
	 *          <td>00 to 59</td>
	 *      </tr>
	 *      <tr>
	 *          <td>s</td>
	 *          <td>Seconds, with leading zeros.</td>
	 *          <td>00 through 59</td>
	 *      </tr>
	 *      <tr>
	 *          <td>I</td>
	 *          <td>Determines if the date is in daylight saving time.</td>
	 *          <td>1 if Daylight Saving Time, 0 otherwise</td>
	 *      </tr>
	 *      <tr>
	 *          <td>O</td>
	 *          <td>Difference to coordinated universal time (UTC) in hours.</td>
	 *          <td>Example: +0200</td>
	 *      </tr>
	 *      <tr>
	 *          <td>P</td>
	 *          <td>Difference to Greenwich time (GMT/UTC) in hours with colon between hours and minutes.</td>
	 *          <td>Example: +02:00</td>
	 *      </tr>
	 *      <tr>
	 *          <td>e or T</td>
	 *          <td>Timezone abbreviation.</td>
	 *          <td>Examples: EST, MDT</td>
	 *      </tr>
	 *      <tr>
	 *          <td>Z</td>
	 *          <td>Timezone offset in seconds.</td>
	 *          <td>-43200 through 50400</td>
	 *      </tr>
	 *      <tr>
	 *          <td>c</td>
	 *          <td>ISO 8601 date.</td>
	 *          <td>2004-02-12T15:19:21+00:00</td>
	 *      </tr>
	 *      <tr>
	 *          <td>r</td>
	 *          <td>RFC 2822 formatted date.</td>
	 *          <td>Example: Thu, 21 Dec 2000 16:01:07 +0200</td>
	 *      </tr>
	 *      <tr>
	 *          <td>U</td>
	 *          <td>Seconds since the Unix Epoch.</td>
	 *          <td>Example: 1171479314</td>
	 *      </tr>
	 *  </table>
	 * Example code:
	 *      <pre>
	 *          trace(DateUtils.formatDate(new Date(), "l ^t^h^e dS ^of F Y h:i:s A"));
	 *      </pre>
	 * @param dateToFormat Date object you wish to format
	 * @param formatString Format of the outputted date String. See the format characters options above.
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function formatDate(dateToFormat:Date, formatString:String):String {
		var out:String = "";
		var c:String;
		var i:int = -1;
		var l:uint = formatString.length;
		var t:Number;

		while(++i < l) {
			c = formatString.substr(i, 1);

			if(c == "^") {
				out += formatString.substr(++i, 1);
			}

			else {
				switch(c) {
					case "d" :
						// Day of the month, 2 digits with leading zeros
						out += addLeadingZeroes(dateToFormat.getDate());
						break;

					case "D" :
						// A textual representation of a day, three letters
						out += getDayAbbrName(dateToFormat.getDay());
						break;

					case "j" :
						// Day of the month without leading zeros
						out += String(dateToFormat.getDate());
						break;

					case "l" :
						// A full textual representation of the day of the week
						out += getDayAsString(dateToFormat.getDay());
						break;

					case "N" :
						// ISO-8601 numeric representation of the day of the week
						t = dateToFormat.getDay();
						if(t == 0) t = 7;
						out += String(t);
						break;

					case "S" :
						// English ordinal suffix for the day of the month, 2 characters
						out += getOrdinalSuffix(dateToFormat.getDate());
						break;

					case "w" :
						// Numeric representation of the day of the week
						out += String(dateToFormat.getDay());
						break;

					case "z" :
						// The day of the year (starting from 0)
						out += String(addLeadingZeroes(getDayOfTheYear(dateToFormat)));
						break;

					case "W" :
						// ISO-8601 week number of year, weeks starting on Monday
						out += String(addLeadingZeroes(getWeekOfTheYear(dateToFormat)));
						break;

					case "F" :
						// A full textual representation of a month, such as January or March
						out += getMonthName(dateToFormat.getMonth());
						break;

					case "m" :
						// Numeric representation of a month, with leading zeros
						out += addLeadingZeroes(dateToFormat.getMonth() + 1);
						break;

					case "M" :
						// A short textual representation of a month, three letters
						out += getMonthAbbrName(dateToFormat.getMonth());
						break;

					case "n" :
						// Numeric representation of a month, without leading zeros
						out += String((dateToFormat.getMonth() + 1));
						break;

					case "t" :
						// Number of days in the given month
						out += String(getDaysInMonth(dateToFormat.getMonth(), dateToFormat.getFullYear()));
						break;

					case "L" :
						// Whether it is a leap year
						out += (isLeapYear(dateToFormat.getFullYear())) ? "1" : "0";
						break;

					case "o" :
					case "Y" :
						// A full numeric representation of a year, 4 digits
						out += String(dateToFormat.getFullYear());
						break;

					case "y" :
						// A two digit representation of a year
						out += String(dateToFormat.getFullYear()).substr(-2);
						break;

					case "a" :
						// Lowercase Ante meridiem and Post meridiem
						out += getMeridiem(dateToFormat.getHours()).toLowerCase();
						break;

					case "A" :
						// Uppercase Ante meridiem and Post meridiem
						out += getMeridiem(dateToFormat.getHours());
						break;

					case "B" :
						// Swatch Internet time
						out += format(getInternetTime(dateToFormat), 3, null, "0");
						break;

					case "g" :
						// 12-hour format of an hour without leading zeros
						t = dateToFormat.getHours();
						if(t == 0) {
							t = 12;
						} else if(t > 12) {
							t -= 12;
						}
						out += String(t);
						break;

					case "G" :
						// 24-hour format of an hour without leading zeros
						out += String(dateToFormat.getHours());
						break;

					case "h" :
						// 12-hour format of an hour with leading zeros
						t = dateToFormat.getHours() + 1;
						if(t == 0) {
							t = 12;
						} else if(t > 12) {
							t -= 12;
						}
						out += addLeadingZeroes(t);
						break;

					case "H" :
						// 24-hour format of an hour with leading zeros
						out += addLeadingZeroes(dateToFormat.getHours());
						break;

					case "i" :
						// Minutes with leading zeros
						out += addLeadingZeroes(dateToFormat.getMinutes());
						break;

					case "s" :
						// Seconds, with leading zeros
						out += addLeadingZeroes(dateToFormat.getSeconds());
						break;

					case "I" :
						// Whether or not the date is in daylights savings time
						out += (isDaylightSavings(dateToFormat)) ? "1" : "0";
						break;

					case "O" :
						// Difference to Greenwich time (GMT/UTC) in hours
						out += getFormattedDifferenceFromUTC(dateToFormat);
						break;

					case "P" :
						out += getFormattedDifferenceFromUTC(dateToFormat, ":");
						break;

					case "e" :
					case "T" :
						// Timezone identifier
						out += getTimezone(dateToFormat);
						break;

					case "Z" :
						// Timezone offset (GMT/UTC) in seconds.
						out += String(int(minutesToSeconds(dateToFormat.getTimezoneOffset())));
						break;

					case "c" :
						// ISO 8601 date
						out += dateToFormat.getFullYear() + "-" + addLeadingZeroes(dateToFormat.getMonth() + 1) + "-" + addLeadingZeroes(dateToFormat.getDate()) + "T" + addLeadingZeroes(dateToFormat.getHours()) + ":" + addLeadingZeroes(dateToFormat.getMinutes()) + ":" + addLeadingZeroes(dateToFormat.getSeconds()) + getFormattedDifferenceFromUTC(dateToFormat, ":");
						break;

					case "r" :
						// RFC 2822 formatted date
						out += getDayAbbrName(dateToFormat.getDay()) + ", " + dateToFormat.getDate() + " " + getMonthAbbrName(dateToFormat.getMonth()) + " " + dateToFormat.getFullYear() + " " + addLeadingZeroes(dateToFormat.getHours()) + ":" + addLeadingZeroes(dateToFormat.getMinutes()) + ":" + addLeadingZeroes(dateToFormat.getSeconds()) + " " + getFormattedDifferenceFromUTC(dateToFormat);
						break;

					case "U" :
						// Seconds since the Unix Epoch (January 1 1970 00:00:00 GMT)
						t = int(dateToFormat.getTime() / 1000);
						out += String(t);
						break;

					default :
						out += formatString.substr(i, 1);
				}
			}
		}

		return out;
	}
}
