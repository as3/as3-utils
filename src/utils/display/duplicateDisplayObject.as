package utils.display
{

	import flash.display.DisplayObject;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;

	// version check for scale9Grid bug

	/**
	 * duplicateDisplayObject
	 * creates a duplicate of the DisplayObject passed.
	 * similar to duplicateMovieClip in AVM1. If using Flash 9, make sure
	 * you export for ActionScript the symbol you are duplicating
	 * @param target the display object to duplicate
	 * @param autoAdd if true, adds the duplicate to the display list
	 * in which target was located
	 * @return a duplicate instance of target
	 */
	public function duplicateDisplayObject(target:DisplayObject, autoAdd:Boolean = false):DisplayObject
	{
		var targetClass:Class = Object(target).constructor;
		var duplicate:DisplayObject = new targetClass() as DisplayObject;

		// duplicate properties
		duplicate.transform = target.transform;
		duplicate.filters = target.filters;
		duplicate.cacheAsBitmap = target.cacheAsBitmap;
		duplicate.opaqueBackground = target.opaqueBackground;
		if (target.scale9Grid)
		{
			var rect:Rectangle = target.scale9Grid;

			if (Capabilities.version.split(" ")[1] == "9,0,16,0")
			{
				// Flash 9 bug where returned scale9Grid as twips
				rect.x /= 20, rect.y /= 20, rect.width /= 20, rect.height /= 20;
			}

			duplicate.scale9Grid = rect;
		}

		// Flash 10 only
		// duplicate.graphics.copyFrom(target.graphics);

		// add to target parent's display list
		// if autoAdd was provided as true
		if (autoAdd && target.parent)
		{
			target.parent.addChild(duplicate);
		}
		return duplicate;
	}
}