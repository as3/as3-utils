package utils.date
{
	public function getDayAsString(day:Number):String
	{
		var dayNamesFull:Array = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
		return dayNamesFull[day];
	}
}