package utils.date
{
	/**
	 * Returns true if date is in the past.
	 * If the date is exactly equal to the current time, it will return false.
	 * 
	 * @author Mims H. Wright
	 */
	public function isPast(date:Date):Boolean
	{
		return (new Date().getTime() - date.getTime()) > 0;
	}
}