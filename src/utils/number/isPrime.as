package utils.number
{
	/**
	   Determines if the number is prime.

	   @param value: A number to determine if it is only divisible by <code>1</code> and itself.
	   @return Returns <code>true</code> if the number is prime; otherwise <code>false</code>.
	   @example
	   <code>
	   trace(NumberUtil.isPrime(13)); // Traces true
	   trace(NumberUtil.isPrime(4)); // Traces false
	   </code>
	 */
	public function isPrime(value:Number):Boolean
	{
		if (value == 1 || value == 2)
			return true;

		if (isEven(value))
			return false;

		var s:Number = Math.sqrt(value);
		for (var i:Number = 3; i <= s; i++)
			if (value % i == 0)
				return false;

		return true;
	}
}