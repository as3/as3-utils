package utils.date
{
	/**
	 * Sort of converts a date into UTC.
	 */
	public function getUTCDate(d:Date):Date
	{
		var nd:Date = new Date();
		var offset:Number = d.getTimezoneOffset() * 60 * 1000;
		nd.setTime(d.getTime() + offset);
		return nd;
	}
}