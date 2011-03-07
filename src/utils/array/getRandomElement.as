package utils.array {
	import utils.number.randomIntegerWithinRange;

	/**
	 * Returns a random element from an array.
	 */
	public function getRandomElement(array:Array):* {
		return array[randomIntegerWithinRange(0, array.length-1)];
	}
}