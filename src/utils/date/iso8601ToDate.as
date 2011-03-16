package utils.date {
	import utils.conversion.minutesToHours;
	import utils.object.isEmpty;



	/**
	 * Converts W3C ISO 8601 date String into a Date object.
	 * Example code:
	 *      <pre>
	 *          trace(iso8601ToDate("1994-11-05T08:15:30-05:00").toString());
	 *      </pre>
	 * @param iso8601 Valid ISO 8601 formatted String
	 * @return Date object of the specified date and time of the ISO 8601 String in universal time
	 * @see <a href="http://www.w3.org/TR/NOTE-datetime">W3C ISO 8601 specification</a>
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function iso8601ToDate(iso8601:String):Date {
		var parts:Array = iso8601.toUpperCase().split("T");
		var date:Array = parts[0].split("-");
		var time:Array = (parts.length <= 1) ? [] : parts[1].split(":");
		var year:uint = isEmpty(date[0]) ? 0 : Number(date[0]);
		var month:uint = isEmpty(date[1]) ? 0 : Number(date[1] - 1);
		var day:uint = isEmpty(date[2]) ? 1 : Number(date[2]);
		var hour:int = isEmpty(time[0]) ? 0 : Number(time[0]);
		var minute:uint = isEmpty(time[1]) ? 0 : Number(time[1]);
		var second:uint = 0;
		var millisecond:uint = 0;

		if(time[2] != undefined) {
			var index:int = time[2].length;
			var temp:Number;

			if(time[2].indexOf("+") > -1) {
				index = time[2].indexOf("+");
			} else if(time[2].indexOf("-") > -1) {
				index = time[2].indexOf("-");
			} else if(time[2].indexOf("Z") > -1) {
				index = time[2].indexOf("Z");
			}

			if(isNaN(index)) {
				temp = Number(time[2].slice(0, index));
				second = Math.floor(temp);
				millisecond = 1000 * (temp % 1);
			}

			if(index != time[2].length) {
				var offset:String = time[2].slice(index);
				var userOffset:Number = minutesToHours(new Date(year, month, day).getTimezoneOffset());

				switch(offset.charAt(0)) {
					case "+" :
					case "-" :
						hour -= userOffset + Number(offset.slice(0));
						break;

					case "Z" :
						hour -= userOffset;
						break;

					default:
				}
			}
		}

		return new Date(year, month, day, hour, minute, second, millisecond);
	}
}
