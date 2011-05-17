package deprecated {
	[Deprecated(replacement="utils.boolean.randomChance")]


	/**
	 * Returns a Boolean.
	 * Example code:
	 *      <pre>
	 *          RandomUtils.boolean(); // returns true or false (50% chance of true)
	 *      </pre>
	 * Another example code:
	 *      <pre>
	 *          RandomUtils.boolean(0.8); // returns true or false (80% chance of true)
	 *      </pre>
	 * @param chance Chance Number (0-1)
	 * @return Float Number between min-max exclusive.
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */ public function randomBoolean(chance:Number = 0.5):Boolean {
		return(Math.random() < chance);
	}
}
