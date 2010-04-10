package utils.display
{
	public function sumProps(children:Array, prop:String):Number
	{
		var sum:Number = 0;
		for (var i:int = 0, l:int = children.length; i < l; i++)
		{
			sum += children[i][prop];
		}
		return sum;
	}
}