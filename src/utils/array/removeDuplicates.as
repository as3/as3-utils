package utils.array
{
	/**
	   Creates new Array composed of only the non-identical elements of passed Array.

	   @param inArray: Array to remove equivalent items.
	   @return A new Array composed of only unique elements.
	   @example
	   <code>
	   var numberArray:Array = new Array(1, 2, 3, 4, 4, 4, 4, 5);
	   trace(ArrayUtil.removeDuplicates(numberArray));
	   </code>
	 */
	public function removeDuplicates(inArray:Array):Array
	{
		return inArray.filter(
			function(e:*, i:int, inArray:Array):Boolean
			{
				return (i == 0) ? true : inArray.lastIndexOf(e, i - 1) == -1;
			});
	}
}