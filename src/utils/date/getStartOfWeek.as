package utils.date
{
	public function getStartOfWeek(date:Date):Date
	{
		var temp:Date = clone(date);

		temp.date -= temp.day;
        temp = makeMorning(temp);
        
		return temp;
	}
}