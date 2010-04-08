package utils.event
{
	import flash.display.DisplayObject;

	public function addTargetEventListener(_target:DisplayObject, _type:String, _listener:Function, _useCapture:Boolean = false, _priority:int = 0, _useWeakReference:Boolean = true):void
	{
		if (_target != null)
		{
			_target.addEventListener(_type, _listener, _useCapture, _priority, _useWeakReference);
		}
	}
}