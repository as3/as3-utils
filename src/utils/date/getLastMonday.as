package utils.date
{
	public function getLastMonday(date:Date):Date
	{
		date.date -= (date.day - 1);

		return date;
	}
}