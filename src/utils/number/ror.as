package utils.number
{
	/**
	 * Rotates x right n bits
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @tiptext
	 */
	public function ror(x:int, n:int):uint
	{
		var nn:int = 32 - n;
		return (x << nn) | (x >>> (32 - nn));
	}
}