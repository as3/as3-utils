package utils.frame
{
	import flash.display.MovieClip;

	/**
	   Removes a frame from triggering/calling a function when reached.

	   @param target: The MovieClip that contains the <code>frame</code>.
	   @param frame: The frame to remove notification from. Can either be a frame number (<code>uint</code>), or the frame label (<code>String</code>).
	   @throws ArguementTypeError if you pass a type other than a <code>String</code> or <code>uint</code> to parameter <code>frame</code>.
	 */
	public function removeFrameScript(target:MovieClip, frame:*):void
	{
		if (frame is String)
			frame = getFrameNumberForLabel(target, frame);
		else if (!(frame is uint))
			throw new Error('frame');

		if (frame == -1 || frame == 0 || frame > target.totalFrames)
			return;

		target.addFrameScript(frame - 1, null);
	}
}