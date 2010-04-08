package utils.object
{
	/**
	 *   Convert the object to a string of form: PROP: VAL&PROP: VAL where:
	 *     PROP is a property
	 *     VAL is its corresponding value
	 *     & is the specified optional delimiter
	 *   @param obj Object to convert
	 *   @param delimiter (optional) Delimiter of property/value pairs
	 *   @return An string of all property/value pairs delimited by the
	 *           given string or null if the input object or delimiter is
	 *           null.
	 *   @author Jackson Dunstan
	 */
	public function toString(obj:Object = null, delimiter:String = "\n"):String
	{
		if (obj == null || delimiter == null)
		{
			return "";
		}
		else
		{
			var ret:Array = [];
			for (var s in obj)
			{
				ret.push(s + ": " + obj[s]);
			}
			return ret.join(delimiter);
		}
	}
}