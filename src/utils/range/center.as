package utils.range
{
	public function center(a:Number, b:Number, c:Number):Number
	{
		if ((a > b) && (a > c))
		{
			if (b > c)
				return b;
			else
				return c;
		}
		else if ((b > a) && (b > c))
		{
			if (a > c)
				return a;
			else
				return c;
		}
		else if (a > b)
		{
			return a;
		}
		else
		{
			return b;
		}
	}
}