package utils.display {
	import flash.display.DisplayObject;
	import flash.display.Graphics;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;



	/**
	 * duplicateDisplayObject
	 * creates a duplicate of the DisplayObject passed.
	 * similar to duplicateMovieClip in AVM1. If using Flash 9, make sure
	 * you export for ActionScript the symbol you are duplicating
	 *
	 * @param source the display object to duplicate
	 * @param autoAdd if true, adds the duplicate to the display list
	 * in which source was located
	 * @return a duplicate instance of source
	 *
	 * @author Trevor McCauley - www.senocular.com
	 * @author cleaned up by Mims Wright
	 */
	public function duplicateDisplayObject(source:DisplayObject, autoAdd:Boolean = false):DisplayObject {
		var sourceClass:Class = Object(source).constructor;
		var duplicate:DisplayObject = new sourceClass() as DisplayObject;

		// duplicate properties
		duplicate.transform = source.transform;
		duplicate.filters = source.filters;
		duplicate.cacheAsBitmap = source.cacheAsBitmap;
		duplicate.opaqueBackground = source.opaqueBackground;
		if(source.scale9Grid) {
			var rect:Rectangle = source.scale9Grid;

			// version check for scale9Grid bug
			if(Capabilities.version.split(" ")[1] == "9,0,16,0") {
				// Flash 9 bug where returned scale9Grid as twips
				rect.x /= 20,rect.y /= 20,rect.width /= 20,rect.height /= 20;
			}

			duplicate.scale9Grid = rect;
		}

		// todo: needs test
		if("graphics" in source) {
			var graphics:Graphics = Graphics(source["graphics"]);
			Graphics(duplicate["graphics"]).copyFrom(graphics);
		}

		// add to target parent's display list
		// if autoAdd was provided as true
		if(autoAdd && source.parent) {
			source.parent.addChild(duplicate);
		}
		return duplicate;
	}
}
