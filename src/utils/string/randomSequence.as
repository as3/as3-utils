package utils.string {
	import utils.number.randomIntegerWithinRange;



	/**
	 * Get random sentence.
	 * @param maxLength Max chars
	 * @param minLength Min chars
	 * @return Random sentence
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function randomSequence(maxLength:uint = 50, minLength:uint = 10):String {
		return randomCharacters(randomIntegerWithinRange(minLength, maxLength), "            abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
	}
}
