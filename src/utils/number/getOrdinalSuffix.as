package utils.number
{
	/**
	   Finds the English ordinal suffix for the number given.

	   @param value: Number to find the ordinal suffix of.
	   @return Returns the suffix for the number, 2 characters.
	   @example
	   <code>
	   trace(32 + NumberUtil.getOrdinalSuffix(32)); // Traces 32nd
	   </code>
	 */
	public function getOrdinalSuffix(value:int):String
	{
		if (value >= 10 && value <= 20)
			return 'th';

		switch (value % 10)
		{
			case 0:
			case 4:
			case 5:
			case 6:
			case 7:
			case 8:
			case 9:
				return 'th';
			case 3:
				return 'rd';
			case 2:
				return 'nd';
			case 1:
				return 'st';
			default:
				return '';
		}
	}
}