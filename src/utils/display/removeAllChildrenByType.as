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
	 */
	public function removeAllChildrenByType(container:DisplayObjectContainer, type:Class):void
	{
		for each(var child:DisplayObject in container)
		{
			if(child is type)
			{
				container.removeChild(child);
			}
		}
	}
}