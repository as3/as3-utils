package utils.string {
	
	import utils.number.randomIntegerWithinRange;

	/**
	 * Get random sentence.
	 * @param maxLength Max chars
	 * @param minLength Min chars
	 * @return Random sentence
	 * @author Vaclav Vancura (http://vancura.org, http://twitter.com/vancura)
	 */
	public function randomSequence(maxLength:uint = 50, minLength:uint = 10):String {
		return randomCharacters(randomIntegerWithinRange(minLength, maxLength), "            abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
	}
}
