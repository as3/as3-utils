package utils.number
{
	/**
	   Creates evenly spaced numerical increments between two numbers.

	   @param begin: The starting value.
	   @param end: The ending value.
	   @param steps: The number of increments between the starting and ending values.
	   @return Returns an Array composed of the increments between the two values.
	   @example
	   <code>
	   trace(NumberUtil.createStepsBetween(0, 5, 4)); // Traces 1,2,3,4
	   trace(NumberUtil.createStepsBetween(1, 3, 3)); // Traces 1.5,2,2.5
	   </code>
	 */
	public function createStepsBetween(begin:Number, end:Number, steps:Number):Array
	{
		steps++;

		var i:uint = 0;
		var stepsBetween:Array = new Array();
		var increment:Number = (end - begin) / steps;

		while (++i < steps)
			stepsBetween.push((i * increment) + begin);

		return stepsBetween;
	}
}