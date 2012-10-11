package utils.display
{
	import flash.display.DisplayObject;
	
	/** 
	 * Centers a display object within the bounds of another based on each of their sizes.
	 * Note: does not add the object as a child or add to stage or resize either object.
	 * 
	 * @param objectToPosition The DisplayObject that will be moved.
	 * @param withinObject The DisplayObject to position within. If left blank, 
	 * 					   will attempt to use the object's parent.
	 * 
	 * @author Mims Wright
	 */
	public function centerWithin(objectToPosition:DisplayObject, withinObject:DisplayObject = null):void {
		if (!objectToPosition) { return; }
		if (!withinObject) {
			if (objectToPosition.parent) {
				withinObject = objectToPosition.parent;
			} else {
				return;
			}
		}
		objectToPosition.x = withinObject.x + (withinObject.width - objectToPosition.width)/2;
		objectToPosition.y = withinObject.y + (withinObject.height - objectToPosition.height)/2;
	}
}