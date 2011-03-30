package utils.library {
	import flash.display.BitmapData;



	/**
	 *   Get an instance of a BitmapData from the clip library
	 *   @param className Name of the BitmapData's class (aka. linkage ID)
	 *   @return An instance of the BitmapData with the given name or null if
	 *           the class cannot be found or the BitmapData cannot be
	 *           instantiated
	 *   @author Jackson Dunstan
	 */
	public function getBitmapDataFromLibrary(className:String):BitmapData {
		var clazz:Class = getClassFromLibrary(className);
		if(!clazz) {
			return null;
		}
		try {
			// Need to pass a width and height, but they are ignored
			return new clazz(0, 0);
		}
		catch (err:ArgumentError) {
			return null;
		}
		return null;
	}
}
