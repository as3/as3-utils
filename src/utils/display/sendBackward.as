package utils.display
{
	
	import flash.display.DisplayObject;
	
	import utils.number.clamp;

	/**
	 * Sends the DisplayObject back in the display list. The <code>steps</code> parameter can be used to jump more than one level.
	 * @param object the DisplayObject to reorder
	 * @param steps the number of levels send the DisplayObject backward
	 * @return the new index of the DisplayObject
	 */
	public function sendBackward(object:DisplayObject, steps:uint = 1):int
	{
		if (!object.parent)
			return -1;

		var index:int = object.parent.getChildIndex(object) - steps;
		index = clamp(index, 0, object.parent.numChildren - 1);

		object.parent.setChildIndex(object, index);

		return index;
	}
}