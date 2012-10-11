package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;

	/**
	 *  Remove all children of a specific type from a container.
	 * 
	 * @example <listing version="3.0">
	 * var s:Sprite = new Sprite();
	 * s.addChild(new Shape());
	 * s.addChild(new Shape());
	 * s.addChild(new MovieClip());
	 * s.addChild(new Sprite());
	 * trace(s.numChildren); // 4
	 * removeAllChildrenByType(s, Shape);
	 * trace(s.numChildren); // 2
	 * </listing>
	 *   
	 * 	@param container Container to remove from
	 *  @param the type of children to remove
	 *  @author John Lindquist
	 *  @author Mims Wright - Rewrote 2012-10-11
	 */
	public function removeAllChildrenByType(container:DisplayObjectContainer, type:Class):void
	{
		var i:int = 0
		  , l:int = container.numChildren
		  , childrenToRemove:Array = []
		  , child:DisplayObject;
		
		for (;i<l;i+=1)	{
			child = container.getChildAt(i);
			if(child is type) {
				childrenToRemove.push(child);
			}
		}
		
		for each (child in childrenToRemove) {
			container.removeChild(child);
		}
	}
}