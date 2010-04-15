package utils.frame
{
	import flash.display.MovieClip;

	/**
	   Calls a specified method when a specific frame is reached in a MovieClip timeline.

	   @param target: The MovieClip that contains the <code>frame</code>.
	   @param frame: The frame to be notified when reached. Can either be a frame number (<code>uint</code>), or the frame label (<code>String</code>).
	   @param notify: The function that will be called when the frame is reached.
	   @return Returns <code>true</code> if the frame was found; otherwise <code>false</code>.
	   @throws ArguementTypeError if you pass a type other than a <code>String</code> or <code>uint</code> to parameter <code>frame</code>.
	 */
	public function addFrameScript(target:MovieClip, frame:*, notify:Function):Boolean
	{
		if (frame is String)
			frame = getFrameNumberForLabel(target, frame);
		else if (!(frame is uint))
			throw new Error('frame');

		if (frame == -1 || frame == 0 || frame > target.totalFrames)
			return false;

		target.addFrameScript(frame - 1, notify);

		return true;
	}
}