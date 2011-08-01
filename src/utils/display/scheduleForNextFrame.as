package utils.display {
	
	import flash.display.Shape;
	import flash.events.Event;

	/**
	 * Wait for a next frame.
	 * Prevents high CPU state, when AVM doesn't send ENTER_FRAMES. It just simply waits until it gets one.
	 * @param callback Function to call once when next frame is displayed
	 * @author Vaclav Vancura (http://vancura.org, http://twitter.com/vancura)
	 */
	public function scheduleForNextFrame(callback:Function):void {
		var obj:Shape = new Shape();

		obj.addEventListener(Event.ENTER_FRAME, function(ev:Event):void {
			obj.removeEventListener(Event.ENTER_FRAME, arguments.callee);
			callback();
		});
	}
}
