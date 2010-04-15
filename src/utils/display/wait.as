package utils.display
{
	import flash.display.Shape;
	import flash.events.Event;

	/**
	 *   Wait a given number of frames then call a callback
	 *   @param numFrames Number of frames to wait before calling the callback
	 *   @param callback Function to call once the given number of frames have passed
	 *   @author Jackson Dunstan
	 */
	public function wait(numFrames:uint, callback:Function):void
	{
		var obj:Shape = new Shape();
		obj.addEventListener(
			Event.ENTER_FRAME,
			function(ev:Event):void
			{
				numFrames--;
				if (numFrames == 0)
				{
					obj.removeEventListener(Event.ENTER_FRAME, arguments.callee);
					callback();
				}
			}
			);
	}
}