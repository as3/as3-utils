package utils.math
{
	/**
	 * Returns the greatest common devisor between two ints.
	 * 
	 * @author Mims Wright
	 */
	public function gcd(a:int, b:int):int {
		if (b == 0) {
			return a;
		}
		return gcd (b, a%b);
	}
}