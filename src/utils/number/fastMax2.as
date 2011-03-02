package utils.number {



	/**
	 * Get fast max for two numbers.
	 * @param val1 Number A
	 * @param val2 Number B
	 * @return Max
	 * @author Jackson Dunstan (http://jacksondunstan.com/articles/445)
	 */
	public function fastMax2(val1:Number, val2:Number):Number {
		if((!(val1 <= 0) && !(val1 > 0)) || (!(val2 <= 0) && !(val2 > 0))) return NaN;
		return val1 > val2 ? val1 : val2;
	}
}
