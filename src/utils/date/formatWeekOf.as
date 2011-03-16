package utils.date
{
	public function formatWeekOf(date:Date):String
	{
		date = getLastSunday(date);

		var string:String = "";
		string = "Week of " + String(date.getUTCMonth() + 1) + "/" + String(date.getUTCDate());

		return string;
	}
}