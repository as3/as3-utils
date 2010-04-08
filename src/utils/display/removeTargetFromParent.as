package utils.display
{
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;

	public function removeTargetFromParent(_target:DisplayObjectContainer):void
	{
		if (_target != null)
		{
			if (_target is MovieClip)
			{
				(_target as MovieClip).stop();
			}
			if (_target.parent != null)
			{
				_target.parent.removeChild(_target);
			}
		}
	}
}