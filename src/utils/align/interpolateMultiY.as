package utils.align
{
	/**
	 * interpolate multiple DisplayObjects at multiple weights at t == (0 less or equal t less or equal 1).  at tx=1, the position of the object would be aligned to the right-most bounds, and ty=0 would position to the left
	 *
	 * @param DisplayObject DisplayObject to position
	 * @param positionArray weight array of vertical position from 0 to 1
	 * @param height width of horizontal constraint
	 * @param offsetY the left offset of the horizontal constraint (default = 0)
	 */
	public function interpolateMultiY(objectArray:Array, positionArray:Array, height:Number, offsetY:int = 0):void
	{
		var j:int = objectArray.length;
		for (var i:int = 0; i < j; i++)
		{
			interpolateX(objectArray[i], positionArray[i], height, offsetY);
		}
	}
}