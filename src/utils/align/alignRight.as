package utils.align
{
	/**
	 * Aligns all the target DisplayObjects by their left edge to the left-most target. 
	 *
	 * Similar to the Flash IDE Alignment panel.
	 * 
	 * Given the following arrangement of targets:
	 * <code>
	 *  t1 
	 *       t2
	 *    t3
	 * </code>
	 * 
	 * After calling <code>alignRight([ t1, t2, t3 ])</code> the arrangment will be:
	 * <code>
	 *       t1
	 *       t2
	 *       t3
	 * </code>
	 * 
	 * @param targets Array of DisplayObject 
	 * 				  or Object with an <code>x</code> property like <code>Point</code>
	 * 				  or Object with an <code>x</code> and <code>width</code> properties like <code>Rectangle</code>.
	 * 
	 * @return targets Array. 
	 * 
	 * @example
	 * <listing version="3.0">
	 * 	
	 * </listing> 
	 * 
	 * @author drewbourne
	 */
	public function alignRight(targets:Array):Array
	{
		var maxX:Number = Number.MIN_VALUE;
		var targetW:Number;
		var targetX:Number;
		var target:Object;
		
		for each (target in targets)
		{
			targetW = "width" in target ? target["width"] : 0;
			targetX = target.x + targetW;
			
			if (targetX > maxX)
				maxX = targetX;
		}
		
		for each (target in targets)
		{
			targetW = "width" in target ? target["width"] : 0;
			target.x = maxX - targetW;
		}
		
		return targets;
	}
}