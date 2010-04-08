package utils.event
{
	import flash.display.DisplayObject;

	public function removeTargetEventListener(_target:DisplayObject, _type:String, _listener:Function, _useCapture:Boolean = false):void
	{
		if (_target != null)
		{
			_target.removeEventListener(_type, _listener, _useCapture);
		}
	}
}