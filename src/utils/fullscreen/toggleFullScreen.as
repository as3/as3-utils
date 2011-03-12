package utils.fullscreen
{
	import flash.display.Stage;
	import flash.display.StageDisplayState;

	/**
	 * Toggles the stage display state between normal and fullscreen.
	 * 
	 * @param stage A reference to the stage object.
	 * @returns String The new state.
	 * 
	 * @author Mims Wright
	 */
	public function toggleFullScreen(stage:Stage):String
	{
		var state:String;
		if (stage.displayState == StageDisplayState.FULL_SCREEN) {
			state = StageDisplayState.NORMAL;
		} else {
			state = StageDisplayState.FULL_SCREEN;
		}
		stage.displayState = state;
		return state;
	}
}