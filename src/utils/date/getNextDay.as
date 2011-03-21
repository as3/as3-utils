package utils.date
{
    /** Returns the next calender date following the provided Date.
	 * If no Date is provided, the current date is used.
	 * @param startDate The date you wish to get the next day of
	 * @return
	 */
    public function getNextDay(startDate:Date=null):Date
    {
        const millisecondsPerDay:int = 1000 * 60 * 60 * 24;

		if(!startDate)
			startDate = new Date();

		//scrub the time of day
		var tmpDate:Date = new Date(startDate.getFullYear(),
                            startDate.getMonth(),
                            startDate.getDate());
		
		tmpDate.setTime(tmpDate.getTime() + millisecondsPerDay);
        return tmpDate;
    }
}
