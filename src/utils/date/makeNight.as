package utils.date {



	/**
	 * Converts a date into just before midnight.
	 */
	public function makeNight(d:Date):Date {
		var d:Date = new Date(d.time);
		d.hours = 23;
		d.minutes = 59;
		d.seconds = 59;
		d.milliseconds = 999;
		return d;
	}
}
