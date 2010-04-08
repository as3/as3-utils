package utils.display
{
	import flash.display.DisplayObjectContainer;

	/**
	 *   Remove all children from a container and leave the bottom few
	 *   @param container Container to remove from
	 *   @param leave (optional) Number of bottom children to leave
	 *   @author Jackson Dunstan
	 */
	public function removeAllChildren(container:DisplayObjectContainer, leave:int = 0):void
	{
		while (container.numChildren > leave)
		{
			container.removeChildAt(leave);
		}
	}
}