package utils.display
{
	import flash.display.DisplayObject;

	public function originalHeight(obj:DisplayObject):Number
	{
		return obj.height / obj.scaleY;
	}
}