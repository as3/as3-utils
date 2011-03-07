package utils.date
{
	/** 
	 * If a date is AM, changes it to PM and vice versa.
	 * 
	 * @author Mims H. Wright
	 * 
	 * @param date The Date to flip.
	 * @returns A new date object, 12 hours later or earlier depending.
	 */
	public function toggleAMPM(date:Date):Date
	{
		var d:Date = new Date(date.time);
		if (getAMPM(date) == "PM") { 
			d.hours -= 12;
		} else {
			d.hours += 12;
		}
		return d;
	}
}