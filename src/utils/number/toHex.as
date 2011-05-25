package utils.number {
	import flash.utils.Endian;

	/**
	 * Converts a uint into a string in the format “0x123456789ABCDEF”.
	 * This function is quite useful for displaying hex colors as text.
	 *
	 * @example 
	 * <listing version="3.0">
	 * getNumberAsHexString(255); // 0xFF
	 * getNumberAsHexString(0xABCDEF); // 0xABCDEF
	 * getNumberAsHexString(0x00FFCC); // 0xFFCC
	 * getNumberAsHexString(0x00FFCC, 6); // 0x00FFCC
	 * getNumberAsHexString(0x00FFCC, 6, false); // 00FFCC
	 * getNumberAsHexString(0x12345, 1, false, Endian.BIG_ENDIAN); // 452301 (note 0 added to 1 to make a byte)
	 * </listing>
	 *
	 *
	 * @param number The number to convert to hex. Note, numbers larger than 0xFFFFFFFF may produce unexpected results.
	 * @param minimumLength The smallest number of hexits to include in the output.
	 * 					   Missing places will be filled in with 0’s.
	 * 					   e.g. getNumberAsHexString(0xFF33, 6); // results in "0x00FF33"
	 * @param showHexDenotation If true, will append "0x" to the front of the string.
	 * @param endianness Flag to output the int as big or little endian. 
	 * 					 Can be Endian.BIG_INDIAN/Endian.LITTLE_ENDIAN or true/false. 
	 * 					 Default is BIG.
	 * @return String representation of the number as a string starting with "0x"
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @see flash.utils.Endian
	 * 
	 * @author Mims H. Wright (modified by Pimm Hogeling)
	 */
	public function toHex(n:int, minimumLength:uint = 1, showHexDenotation:Boolean = true, endianness:* = null):String {
		var bigEndian:Boolean;
		if (endianness == null) { endianness = Endian.BIG_ENDIAN; }
		if (endianness is Boolean) { 
			bigEndian = Boolean(endianness);
		} else {
			bigEndian = endianness == Endian.BIG_ENDIAN;
		}

		
		// The string that will be output at the end of the function.
		var string:String = n.toString(16).toUpperCase();
		
		// While the minimumLength argument is higher than the length of the string, add a leading zero.
		while (minimumLength > string.length) {
			string = "0" + string;
		}
		
		if (!bigEndian) {
			// reverse string.
			if (string.length %2 == 1) { string = "0" + string; }
			var i:int = 0;
			var reversed:Array = [];
			while (i < string.length) {
				var byte:String = string.charAt(i++) + string.charAt(i++);
				reversed.unshift(byte);
			}
			string = reversed.join("");
			
		}
		
		// Return the result with a "0x" in front of the result.
		if (showHexDenotation) { string = "0x" + string; }
		
		return string;
	}
}
