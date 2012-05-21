package utils.date
{
	/**
	 *       Compares dates and returns the latest one.
	 *
	 *       @param dates that will be compared.
	 * 		 @return The latest date.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 * 		 @author Mims H. Wright
	 */
	public function getLatestDate(... dates ):Date
	{
		var latestDate:Date;
		if (dates.length() == 0) {
			throw new ArgumentError("Requires at least one argument");
		} 
		for each (var date:Date in dates) {
			if (!latestDate) {
				latestDate = date;
				continue;
			}
			
			if (date.getTime() > latestDate.getTime()) {
				latestDate = date;
			}
		}
		return latestDate;
	}
}