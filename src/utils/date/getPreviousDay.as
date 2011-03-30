package utils.date
{
	/** Returns the previous calender date to the provided Date.
	 * If no Date is provided, the current date is used.
	 * @param startDate The date you wish to get the previous day of
	 * @return
	 */
    public function getPreviousDay(startDate:Date=null):Date
    {
        const millisecondsPerDay:int = 1000 * 60 * 60 * 24;

		if(!startDate)
			startDate = new Date();
		
        //scrub the time of day
        var tmpDate:Date = new Date(startDate.getFullYear(),
                                    startDate.getMonth(),
                                    startDate.getDate());
        return new Date(tmpDate.getTime() - millisecondsPerDay);
    }
}
