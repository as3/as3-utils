package utils.color
{
	public function setARGB(a:Number, r:Number, g:Number, b:Number):uint
	{
		var argb:uint = 0;
		argb += (a << 24);
		argb += (r << 16);
		argb += (g << 8);
		argb += (b);
		return argb;
	}
}