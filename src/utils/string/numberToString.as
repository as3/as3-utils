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
	public function numberToString(n:uint):String {
		var str:String;                             		// str will hold the final outcome
		var output:Vector.<String> = new Vector.<String>();	// output will temporarily hold the strings that make up str
		var digits:Vector.<String> = new Vector.<String>();  		// digit is an array of digits based on the number n
		var negative:Boolean = false;                 		// used for removing minus sign.
		
		// check for zero
		if (n == 0) { return N._0; } // todo: tidy
		// check for negatives
		if (n < 0) { 
			negative = true;
			n *= -1;
		}
		
		digits = Vector.<String>(n.toString().split(""));
		
		// reverse the array so that each order of ten can be represented by 
		// an element of the periods array.
		digits.reverse();
		var max:Number = digits.length;
		
		// for each digit in n
		var magnitude:int = 0;
		for (;magnitude < max; magnitude+=1) {
			var pos:int = magnitude;
			
			var digitInt:int = int(digits[pos]);
			var periodForThisMagnitude:Vector.<String> = N.periods[magnitude];
//			var textForThisDigit:String = periodForThisMagnitude[digitInt]
			// push the text equivelant to the output
//			output.push(textForThisDigit);
			output.push(N.periods[magnitude][digits[pos]]);
			
			// anytime ten is written it's a special case.
			// the second magnitude and every 3 magnitudes after are special
			var s:Number = magnitude % 3; 
			
			// if this is a special case and output for special (tens) place is ten
			if ((s == 1) && (output[magnitude] == N.periods[1][1])) {
				// delete the value for the ones place
				output[magnitude] = "";
				// choose a new value for tens using a special case
				var newTxt:String
				switch (int(digits[magnitude-1])) {
					case (0) : newTxt = N._10;	break;
					case (1) : newTxt = N._11;	break;
					case (2) : newTxt = N._12;	break;
					case (3) : newTxt = N._13;	break;
					case (4) : newTxt = N._14;	break;
					case (5) : newTxt = N._15;	break;
					case (6) : newTxt = N._16;	break;
					case (7) : newTxt = N._17;	break;
					case (8) : newTxt = N._18;	break;
					case (9) : newTxt = N._19;	break;
				}
				// replace the word 'ten' with the new text.
				var spc:Number = output[magnitude-1].indexOf(" ");
				output[magnitude-1] = newTxt + output[magnitude-1].substr(spc + 1);
			}
		}    
		
		if (negative == true) { 
			output.push("negative ");
			n *= -1;
		}
		
		// reverse the output so that it will look correct
		output.reverse();
		// save the output to the string
		str = output.join("");
		return str;
	}
}

internal class N {
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
	
	
	public static const _1to9:Vector.<String> = Vector.<String>(["",_1,_2,_3,_4,_5,_6,_7,_8,_9]);
	public static const _10to90:Vector.<String> = Vector.<String>(["",_10,_20,_30,_40,_50,_60,_70,_80,_90]);
	public static const _100to900:Vector.<String> = Vector.<String>(["",_1 + _100, _2 + _100, _3 + _100, _4 + _100, _5 + _100, _6 + _100, _7 + _100, _8 + _100, _9 + _100]);
	
	/**
	 *    Period generator. Creates arrays of periods of numeric text equivelants. ie. 1thousand, 10thousand, 100thousand
	 *
	 *    @param counter - the name of the period (ie 'billion')
	 *    @returns array - an array of three arrays that represent the period, to be appended to the master period
	 */
	private static function createPeriod (counter:String):Vector.<Vector.<String>> {
		var period:Vector.<Vector.<String>> = Vector.<Vector.<String>> ([
			Vector.<String>(["",_1 + counter, _2 + counter, _3 + counter, _4 + counter, _5 + counter, _6 + counter, _7 + counter, _8 + counter, _9 + counter]),
			_10to90,
			_100to900
		]);
		return period;
	}
	
	// the text equivelants of all the numbers as a multi-dimensional array
	public static function get periods():Vector.<Vector.<String>> {
		if (_periods == null) {
			_periods = new Vector.<Vector.<String>>();
			_periods = _periods.concat(
				createPeriod(_1000000000000000), // quadril
				createPeriod(_1000000000000), // tril
				createPeriod(_1000000000), // bil
				createPeriod(_1000000), // mil
				createPeriod(_1000),
				createPeriod("")
			);
		}
		return _periods;
	}
	private static var _periods:Vector.<Vector.<String>>;
} 