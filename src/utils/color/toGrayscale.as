package utils.color
{
	public function toGrayscale(hex:uint):uint
	{
		var color:Object = getARGB(hex);
		var c:Number = 0;
		c += color.r * .3;
		c += color.g * .59;
		c += color.b * .11;
		color.r = color.g = color.b = c;
		return setARGB(color.a, color.r, color.g, color.b);
	}
}