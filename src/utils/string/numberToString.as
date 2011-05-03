package utils.string
{
	/**
	 * Converts a number to its text equivelant
	 * 
	 * @params n The number to convert
	 * @returns String equivelant of the number
	 * @playerversion Flash 10.0
	 * @author Mims H. Wright
	 */
	public function numberToString(n:Number):String {
		var output:Vector.<String> = new Vector.<String>();	// output will temporarily hold the strings that make up str
		var isNegative:Boolean = false;                 		// used for removing minus sign.
		var integers:Number;
		var decimals:Number;
		
		// check for NaN 
		if (isNaN(n)) { return N.NAN; }
		// check for zero
		if (n == 0) { return N._0; }
		// check for negatives
		if (n < 0) { 
			isNegative = true;
			n *= -1;
		}
		
		
		// solve for decimals
		var decimalPointIndex:int = n.toString().indexOf(".");
		if (decimalPointIndex > -1) {
			digits = Vector.<String> (n.toString().substr(decimalPointIndex + 1).split(""));
			digits.reverse();
			
			var i:int = 0;
			var digit:int;
			for (; i < digits.length; i += 1) {
				digit = int(digits[i]);
				if (digit == 0) {
					output.push(N._0 + " ");
				} else {
					output.push(N._1to9[digit]);
				}
			}
			output.push(N.decimal);
		}

		// solve for integers
		integers = Math.floor(n);
		var period:int = 0;
		var digits:Vector.<String> = Vector.<String>(integers.toString().split("")).reverse();
		var hundreds:int;
		var tens:int;
		var ones:int;
		var next3:String;
		while (digits.length > 0) {
			// grab the next three digits and analyze them.
			next3 = digits.slice(0,3).join("");
			
			if (next3 != "000") {
				output.push(N.periods[period]);
			}
			
			ones = int(digits[0]); 
			
			try { tens = int(digits[1]); }
			catch (e:RangeError) { tens = NaN;}
			
			try { hundreds = int(digits[2]); }
			catch (e:RangeError) { hundreds = NaN; }
			
			if (!isNaN(tens)) {
				if (tens == 1) {
					output.push(N._10to19[ones]);
				} else {
					output.push(N._1to9[ones]);
					output.push(N._10to90[tens]);
				}
			} else {
				output.push(N._1to9[ones]);
			}
			if (!isNaN(hundreds)) {
				output.push(N._100to900[hundreds]);
			}
			
			// advance the period counter
			period++;
			// remove those three digits from the array of digits
			digits.splice(0, 3);
		}
		
		
		if (isNegative == true) { 
			output.push(N.negative);
			n *= -1;
		}
		
		// reverse the output so that it will look correct
		output.reverse();
		// save the output to the string
		var str:String = output.join("");
		// remove any trailing spaces.
		if (str.charAt(str.length-1) == " ") { 
			str = str.substr(0, str.length-1);
		}
		return str;
	}
}

internal class N {
	public static const NAN:String = "not a number";
	public static const decimal:String = "point ";
	public static const negative:String = "negative ";
	
	public static const _0:String = "zero";
	public static const _1:String = "one ";
	public static const _2:String = "two ";
	public static const _3:String = "three ";
	public static const _4:String = "four ";
	public static const _5:String = "five ";
	public static const _6:String = "six ";
	public static const _7:String = "seven ";
	public static const _8:String = "eight ";
	public static const _9:String = "nine ";
	public static const _10:String = "ten ";
	public static const _11:String = "eleven ";
	public static const _12:String = "twelve ";
	public static const _13:String = "thirteen ";
	public static const _14:String = "fourteen ";
	public static const _15:String = "fifteen ";
	public static const _16:String = "sixteen ";
	public static const _17:String = "seventeen ";
	public static const _18:String = "eighteen ";
	public static const _19:String = "nineteen ";
	public static const _20:String = "twenty ";
	public static const _30:String = "thirty ";
	public static const _40:String = "fourty ";
	public static const _50:String = "fifty ";
	public static const _60:String = "sixty ";
	public static const _70:String = "seventy ";
	public static const _80:String = "eighty ";
	public static const _90:String = "ninety ";
	public static const _100:String = "hundred ";
	public static const _1000:String = "thousand ";
	public static const _1000000:String = "million ";
	public static const _1000000000:String = "billion ";
	public static const _1000000000000:String = "trillion ";
	public static const _1000000000000000:String = "quadrillion ";
	public static const _1000000000000000000:String = "quintillion ";
	public static const _1000000000000000000000:String = "sextillion ";
	public static const _1000000000000000000000000:String = "septillion ";
	public static const _1000000000000000000000000000:String = "octillion ";
	
	
	public static const _1to9:Vector.<String> = Vector.<String>(["",_1,_2,_3,_4,_5,_6,_7,_8,_9]);
	public static const _10to19:Vector.<String> = Vector.<String>([_10,_11,_12,_13,_14,_15,_16,_17,_18,_19]);
	public static const _10to90:Vector.<String> = Vector.<String>(["",_10,_20,_30,_40,_50,_60,_70,_80,_90]);
	public static const _100to900:Vector.<String> = Vector.<String>(["",_1 + _100, _2 + _100, _3 + _100, _4 + _100, _5 + _100, _6 + _100, _7 + _100, _8 + _100, _9 + _100]);
	
	public static const periods:Vector.<String> = Vector.<String>(
		["",
		_1000, 
		_1000000, 
		_1000000000,
		_1000000000000,
		_1000000000000000,
		_1000000000000000000,
		_1000000000000000000000,
		_1000000000000000000000000,
		_1000000000000000000000000000
	]);
} 