package utils.display
{
	import flash.display.DisplayObject;
	
	import utils.number.clamp;


	/**
	 * Sends the DisplayObject to the back of the display list. The <code>forward</code> parameter can be used to bring the DisplayObject forward a few levels from the back.
	 * @param object the DisplayObject to reorder
	 * @param forward the number of levels from the back of the display list
	 * @return the new index of the DisplayObject
	 */
	public function sendToBack(object:DisplayObject, forward:uint = 0):int
	{
		if (!object.parent)
			return -1;

		var index:int = clamp(forward, 0, object.parent.numChildren - 1);

		object.parent.setChildIndex(object, index);

		return index;
	}
}