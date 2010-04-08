package utils.date
{
	/**
	 *       Returns a two digit representation of the year represented by the
	 *       specified date.
	 *
	 *       @param d The Date instance whose year will be used to generate a two
	 *       digit string representation of the year.
	 *
	 *       @return A string that contains a 2 digit representation of the year.
	 *       Single digits will be padded with 0.
	 *
	 *       @langversion ActionScript 3.0
	 *       @playerversion Flash 9.0
	 *       @tiptext
	 */
	public function getShortYear(d:Date):String
	{
		var dStr:String = String(d.getFullYear());

		if (dStr.length < 3)
		{
			return dStr;
		}

		return (dStr.substr(dStr.length - 2));
	}
}