package utils.date
{
	public function getLastSunday(date:Date):Date
	{
		var temp:Date = clone(date);

		temp.date -= temp.day;

		return temp;
	}
}