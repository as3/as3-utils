package utils.number {
	import flash.utils.Endian;

	/**
	 * Outputs the hex value of a int, allowing the developer to specify
	 * the endian in the process.  Hex output is lowercase.
	 * @param n The int value to output as hex
	 * @param endianness Flag to output the int as big or little endian. 
	 * 					 Can be Endian.BIG_INDIAN/Endian.LITTLE_ENDIAN or true/false
	 * @return A string of length 8 corresponding to the
	 *              hex representation of n ( minus the leading "0x" )
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @see flash.utils.Endian
	 * 
	 * @author Unknown. flash.utils.Endian tweak added by Mims Wright
	 */
	public function toHex(n:int, endianness:* = null):String {
		var bigEndian:Boolean;
		if (endianness == null) { endianness = Endian.LITTLE_ENDIAN; }
		if (endianness is Boolean) { 
			bigEndian = Boolean(endianness);
		} else {
			bigEndian = endianness == Endian.BIG_ENDIAN;
		}

		var s:String = "";

		if(bigEndian) {
			for(var i:int = 0; i < 4; i++) {
				s += hexChars.charAt((n >> ((3 - i) * 8 + 4)) & 0xF) + hexChars.charAt((n >> ((3 - i) * 8)) & 0xF);
			}
		}
		else {
			for(var x:int = 0; x < 4; x++) {
				s += hexChars.charAt((n >> (x * 8 + 4)) & 0xF) + hexChars.charAt((n >> (x * 8)) & 0xF);
			}
		}

		return s;
	}
}
