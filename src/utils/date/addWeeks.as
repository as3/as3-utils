package utils.date
{
	public function addWeeks(date:Date,  weeks:uint):Date
	{
		date.date += weeks * 7;
		return date;
	}
}