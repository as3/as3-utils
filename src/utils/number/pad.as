package utils.number {



	/**
	 * Pads the <code>value</code> with the set number of digits before and after the point.
	 * If the number of digits in the integer of <code>value</code> is less than <code>beforePoint</code>, the remaining digits are filled with zeros.
	 * If the number of digits in the decimal of <code>value</code> is less than <code>afterPoint</code>, the remaining digits are filled with zeros.
	 * @param value the number to pad
	 * @param beforePoint the number of digits to pad before the point
	 * @param afterPoint the number of digits to pad after the point
	 * @return <code>value</code> padded as a <code>String</code>
	 * @example
	 * <listing version="3.0">
	 * NumberUtil.pad(.824, 0, 5); // returns ".82400"
	 * NumberUtil.pad(9, 3, 2); // returns "009.00"
	 * NumberUtil.pad(2835.3, 4, 2); // returns "2835.30"
	 * </listing>
	 */
	public function pad(value:Number, beforePoint:uint, afterPoint:uint = 0):String {
		// separate the integer from the decimal
		var valueArray:Array = String(value).split(".");

		var integer:String = valueArray[0];

		// determine the sign of the value
		var negative:Boolean = integer.substr(0, 1) == "-";

		// remove the "-" if it exists
		if(negative)
			integer = integer.substr(1);

		// treat zeros as empty, so integer.length doesn't return 1 when integer is 0
		if(integer == "0") {
			integer = "";
		}

		var len:int = integer.length;

		// determine how many times "0" needs to be prepended
		var zeros:int = Math.max(0, beforePoint - len);

		// prepend "0" until zeros == 0
		while(zeros--)
			integer = "0" + integer;

		var decimal:String;

		// if a point didn't exist or the decimal is 0, empty the decimal
		if(valueArray.length == 1 || valueArray[1] == "0") {
			decimal = "";
		}
		else {
			decimal = valueArray[1];
		}

		len = decimal.length;

		// determine how many times "0" needs to be appended
		zeros = Math.max(0, afterPoint - len);

		// append "0" until zeros == 0
		while(zeros--)
			decimal += "0";

		// set sign if negative
		var sign:String = negative ? "-" : "";

		// set point if a decimal exists (or afterPoint > 0, determined earlier)
		var point:String = decimal ? "." : "";

		return sign + integer + point + decimal;
	}
}
