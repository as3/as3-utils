package utils.math
{
	/**
	 * Expresses chances that an outcome will occur out of a number of total possible outcomes.
	 * 
	 * @example <pre> 
	 * // number of kings in a deck of cards.
	 * expressAsOdds(4, 52); // 1:13
	 * 
	 * @author Mims Wright
	 */
	public function expressAsOdds(numberOfChances:int, allPossibleOutcomes:int):String {
		var _gcd:int = gcd(numberOfChances, allPossibleOutcomes);
		return (numberOfChances / _gcd) + ":" + (allPossibleOutcomes / _gcd);	
	}
}