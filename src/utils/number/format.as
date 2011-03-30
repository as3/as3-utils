package utils.number {



	/**
	 Formats a number.
	 @param value The number you wish to format.
	 @param minLength The minimum length of the number.
	 @param thouDelim The character used to separate thousands.
	 @param fillChar The leading character used to make the number the minimum length.
	 @return Returns the formatted number as a String.
	 @example
	 <code>
	 trace(NumberUtil.format(1234567, 8, ",")); // Traces 01,234,567
	 </code>
	 */
	public function format(value:Number, minLength:uint, thouDelim:String = null, fillChar:String = null):String {
		var num:String = value.toString();
		var len:uint = num.length;

		if(thouDelim != null) {
			var numSplit:Array = num.split('');
			var counter:uint = 3;
			var i:uint = numSplit.length;

			while(--i > 0) {
				counter--;
				if(counter == 0) {
					counter = 3;
					numSplit.splice(i, 0, thouDelim);
				}
			}

			num = numSplit.join('');
		}

		if(minLength != 0) {
			if(len < minLength) {
				minLength -= len;

				var addChar:String = (fillChar == null) ? '0' : fillChar;

				while(minLength--)
					num = addChar + num;
			}
		}

		return num;
	}
}
