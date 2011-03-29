package utils.number {



	/**
	 * Low pass filter algorithm for easing a value toward a destination value.
	 * Works best for tweening values when no definite time duration exists and
	 * when the destination value changes.
	 * When <code>(0.5 &lt; n &lt; 1)</code>, then the resulting values will
	 * overshoot (ping-pong) until they reach the destination value.
	 * When <code>n</code> is greater than 1, as its value increases, the time
	 * it takes to reach the destination also increases. A pleasing value for
	 * <code>n</code> is 5.
	 * @param value The current value.
	 * @param dest The destination value.
	 * @param n The slowdown factor.
	 * @return The weighted average.
	 */
	public function getWeightedAverage(value:Number, dest:Number, n:Number):Number {
		return value + (dest - value) / n;
	}
}
