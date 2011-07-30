package utils.array
{
	import utils.number.randomIntegerWithinRange;

	/**
	   Creates new Array composed of passed Array's items in a random order.

	   @param inArray: Array to create copy of, and randomize.
	   @return A new Array composed of passed Array's items in a random order.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
	   trace(ArrayUtil.randomize(numberArray));
	   </code>
	 */
	public function randomize(inArray:Array):Array
	{
		var t:Array = new Array();
		var r:Array = inArray.sort(
			function(a:*, b:*):int
			{
				return randomIntegerWithinRange(0, 1) ? 1 : -1;
			}
			, Array.RETURNINDEXEDARRAY);
		var i:int = -1;

		while (++i < inArray.length)
			t.push(inArray[r[i]]);

		return t;
	}
}