package utils.display
{
	import flash.display.DisplayObjectContainer;

	/**
	 *   Remove all children from a container and leave the bottom few
	 *   @param container Container to remove from
	 *   @param the type of children to remove
	 *   @author John Lindquist
	 */
	public function removeAllChildrenByType(container:DisplayObjectContainer, type:Class):void
	{
		for each(var child:DisplayObjectContainer in container)
		{
			if(child is type)
			{
				container.removeChild(child);
			}
		}
	}
}