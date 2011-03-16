package utils.array {
	/**
	 *       Remove all instances of the specified value from the array,
	 *
	 *       @param arr The array from which the value will be removed
	 *
	 *       @param value The object that will be removed from the array.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function removeValueFromArray(arr:Array, value:Object):void {
		var len:uint = arr.length;

		for(var i:Number = len; i > -1; i--) {
			if(arr[i] == value) {
				arr.splice(i, 1);
			}
		}
	}
}
