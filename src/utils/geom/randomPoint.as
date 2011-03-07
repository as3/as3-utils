package utils.geom
{
	import flash.geom.Point;
	
	import utils.number.randomIntegerWithinRange;

	/**
	 * Returns a randomly generated point (containing int values)
	 * 
	 * @author Mims H. Wright
	 */
	public function randomPoint(xLow:int, xHigh:int, yLow:int, yHigh:int):Point {
		return new Point(
			randomIntegerWithinRange(xLow, xHigh),
			randomIntegerWithinRange(yLow, yHigh)
		);
	}		
}