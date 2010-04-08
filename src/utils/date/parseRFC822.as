package utils.date
{
	/**
	 * Parses dates that conform to RFC822 into Date objects. This method also
	 * supports four-digit years (not supported in RFC822), but two-digit years
	 * (referring to the 20th century) are fine, too.
	 *
	 * This function is useful for parsing RSS .91, .92, and 2.0 dates.
	 *
	 * @param str
	 *
	 * @returns Date
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @tiptext
	 *
	 * @see http://asg.web.cmu.edu/rfc/rfc822.html
	 */
	public function parseRFC822(str:String):Date
	{
		var finalDate:Date;
		try
		{
			var dateParts:Array = str.split(" ");
			var day:String = null;

			if (dateParts[0].search(/\d/) == -1)
			{
				day = dateParts.shift().replace(/\W/, "");
			}

			var date:Number = Number(dateParts.shift());
			var month:Number = Number(getShortMonthIndex(dateParts.shift()));
			var year:Number = Number(dateParts.shift());
			var timeParts:Array = dateParts.shift().split(":");
			var hour:Number = int(timeParts.shift());
			var minute:Number = int(timeParts.shift());
			var second:Number = (timeParts.length > 0) ? int(timeParts.shift()) : 0;

			var milliseconds:Number = Date.UTC(year, month, date, hour, minute, second, 0);

			var timezone:String = dateParts.shift();
			var offset:Number = 0;

			if (timezone.search(/\d/) == -1)
			{
				switch (timezone)
				{
					case "UT":
						offset = 0;
						break;
					case "UTC":
						offset = 0;
						break;
					case "GMT":
						offset = 0;
						break;
					case "EST":
						offset = (-5 * 3600000);
						break;
					case "EDT":
						offset = (-4 * 3600000);
						break;
					case "CST":
						offset = (-6 * 3600000);
						break;
					case "CDT":
						offset = (-5 * 3600000);
						break;
					case "MST":
						offset = (-7 * 3600000);
						break;
					case "MDT":
						offset = (-6 * 3600000);
						break;
					case "PST":
						offset = (-8 * 3600000);
						break;
					case "PDT":
						offset = (-7 * 3600000);
						break;
					case "Z":
						offset = 0;
						break;
					case "A":
						offset = (-1 * 3600000);
						break;
					case "M":
						offset = (-12 * 3600000);
						break;
					case "N":
						offset = (1 * 3600000);
						break;
					case "Y":
						offset = (12 * 3600000);
						break;
					default:
						offset = 0;
				}
			}
			else
			{
				var multiplier:Number = 1;
				var oHours:Number = 0;
				var oMinutes:Number = 0;
				if (timezone.length != 4)
				{
					if (timezone.charAt(0) == "-")
					{
						multiplier = -1;
					}
					timezone = timezone.substr(1, 4);
				}
				oHours = Number(timezone.substr(0, 2));
				oMinutes = Number(timezone.substr(2, 2));
				offset = (((oHours * 3600000) + (oMinutes * 60000)) * multiplier);
			}

			finalDate = new Date(milliseconds - offset);

			if (finalDate.toString() == "Invalid Date")
			{
				throw new Error("This date does not conform to RFC822.");
			}
		}
		catch (e:Error)
		{
			var eStr:String = "Unable to parse the string [" + str + "] into a date. ";
			eStr += "The internal error was: " + e.toString();
			throw new Error(eStr);
		}
		return finalDate;
	}
}