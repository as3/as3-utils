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
	 * After calling <code>alignLeft([ t1, t2, t3 ])</code> the arrangment will be:
	 * <code>
	 *  t1
	 *  t2
	 *  t3
	 * </code>
	 * 
	 * @param targets Array of DisplayObject (or Object with an <code>x</code> property like <code>Point</code>).
	 * @return targets Array. 
	 * 
	 * @example
	 * <listing version="3.0">
	 * 	var t1:Sprite = new Sprite();
	 * 	t1.x = 5;
	 * 
	 * 	var t2:Sprite = new Sprite();
	 * 	t2.x = 30;
	 * 
	 * 	var t3:Sprite = new Sprite();
	 * 	t3.x = 15;
	 * 
	 * 	var targets:Array = [t1, t2, t3];
	 * 	alignLeft(targets);
	 * 
	 * 	trace(t1.x, t2.x t3.x);
	 * 	// 5 5 5
	 * </listing> 
	 * 
	 * @author drewbourne
	 */
	public function alignLeft(targets:Array):Array
	{
		var minX:Number = Number.MAX_VALUE;
		var targetX:Number;
		var target:Object;
		
		for each (target in targets)
		{
			targetX = target.x;
			
			if (targetX < minX)
				minX = targetX;
		}
		
		for each (target in targets)
		{
			target.x = minX;
		}
		
		return targets;
	}
}