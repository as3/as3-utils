package utils.string {



	/**
	 * Determines the percentage of similiarity, based on editDistance.
	 * @param value Input String
	 * @param tgt Target String
	 * @returns Percentage of similiarity, based on editDistance
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function similarity(value:String, tgt:String):Number {
		var out:Number = 100;
		var ed:uint = editDistance(value, tgt);
		var maxLen:uint = Math.max(value.length, tgt.length);

		if(maxLen !== 0) {
			out = (1 - ed / maxLen) * 100;
		}

		return out;
	}
}
