package deprecated {
	[Deprecated(replacement="utils.number.randomWithinRange")]


	/**
	 * Returns a random float number within a given range
	 */ public function randomRangeFloat(min:Number, max:Number):Number {
		return Math.random() * (max - min) + min;
	}
}
