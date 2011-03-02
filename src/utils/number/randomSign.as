package utils.number {



	/**
	 * Returns an int: -1 or 1.
	 * Example code:
	 *      <pre>
	 *          RandomUtils.sign(); // returns 1 or -1 (50% chance of 1)
	 *      </pre>
	 * Another example code:
	 *      <pre>
	 *          RandomUtils.sign(0.8); // returns 1 or -1 (80% chance of 1)
	 *      </pre>
	 * @param chance Chance Number (0-1)
	 * @return int: -1 or 1.
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function randomSign(chance:Number = 0.5):int {
		return(Math.random() < chance) ? 1 : -1;
	}
}
