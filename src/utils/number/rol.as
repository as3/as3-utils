package utils.number
{
	/**
	 * Rotates x left n bits
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * @tiptext
	 */
	public function rol(x:int, n:int):int
	{
		return (x << n) | (x >>> (32 - n));
	}
}