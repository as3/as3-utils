package utils.library {
	import flash.display.MovieClip;



	/**
	 *   Get an instance of a clip from the clip library
	 *   @param className Name of the clip class (aka. linkage ID)
	 *   @return An instance of the clip with the given name or null if the
	 *           class cannot be found or the clip cannot be instantiated
	 *   @author Jackson Dunstan
	 */
	public function getClipFromLibrary(className:String):MovieClip {
		var clazz:Class = getClassFromLibrary(className);
		if(!clazz) {
			return null;
		}
		try {
			return new clazz();
		}
		catch (err:ArgumentError) {
			return null;
		}
		return null;
	}
}
