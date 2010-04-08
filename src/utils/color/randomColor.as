package utils.color
{
	public function randomColor():Number
	{
		return Number("0x" + Math.floor(Math.random() * 16777215).toString(16).toUpperCase())
	}
}