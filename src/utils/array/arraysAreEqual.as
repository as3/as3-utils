package utils.array {
	/**
	 *       Compares two arrays and returns a boolean indicating whether the arrays
	 *       contain the same values at the same indexes.
	 *
	 *       @param arr1 The first array that will be compared to the second.
	 *
	 *       @param arr2 The second array that will be compared to the first.
	 *
	 *       @return True if the arrays contains the same values at the same indexes.
	 False if they do not.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function arraysAreEqual(arr1:Array, arr2:Array):Boolean {
		if(arr1.length != arr2.length) {
			return false;
		}

		var len:Number = arr1.length;

		for(var i:Number = 0; i < len; i++) {
			if(arr1[i] != arr2[i]) {
				return false;
			}
		}

		return true;
	}
}
