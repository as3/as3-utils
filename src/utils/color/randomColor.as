package utils.color
{
	/**
	 * Returns a random color between 0x000000 and 0xFFFFFF
	 * 
	 * @author Mims Wright
	 */
	public function randomColor():uint {
		return uint(Math.random() * 0xFFFFFF);
	}
}