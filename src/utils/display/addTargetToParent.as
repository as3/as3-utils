package utils.display
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;


	public function addTargetToParent(_target:DisplayObject, _parent:DisplayObjectContainer, _adjustOrder:int = 1):void
	{
		const ADD_TARGET_TO_PARENT_ADJUST_ORDER_TYPE_TOP:int = 1;
		const ADD_TARGET_TO_PARENT_ADJUST_ORDER_TYPE_LAST:int = 2;

		if (_target != null && _parent != null)
		{
			switch (_adjustOrder)
			{
				case ADD_TARGET_TO_PARENT_ADJUST_ORDER_TYPE_LAST:
					_parent.addChildAt(_target, _parent.numChildren - 1);
					break;
				case ADD_TARGET_TO_PARENT_ADJUST_ORDER_TYPE_TOP:
					_parent.addChild(_target);
					break;
			}
		}
	}
}