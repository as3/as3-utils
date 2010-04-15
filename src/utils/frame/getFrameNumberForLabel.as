package utils.frame
{
	import flash.display.MovieClip;

	/**
	   Determines the frame number for the specified label.

	   @param target: The MovieClip to search for the frame label in.
	   @param label: The name of the frame label.
	   @return The frame number of the label or <code>-1</code> if the frame label was not found.
	 */
	public function getFrameNumberForLabel(target:MovieClip, label:String):int
	{
		var labels:Array = target.currentLabels;
		var l:int = labels.length;

		while (l--)
			if (labels[l].name == label)
				return labels[l].frame;

		return -1;
	}
}