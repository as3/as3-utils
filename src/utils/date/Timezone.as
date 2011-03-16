package utils.date
{
	/*
	* Need to discuss how to refactor timezone logic into better utils
	* 
	* This class currently only works with USA (the offsets default to EAST if the timezone is outside of the USA.
	* 
	* */
	public class Timezone
	{
		public static const EAST:String = "ET";
		public static const WEST:String = "WT";
		public static const ARIZONA:String = "AZ";
		public static const MOUNTAIN:String = "MT";
		public static const CENTRAL:String = "CT";
		public static const PACIFIC:String = "PT";
		public static const ALASKA:String = "AK";
		public static const HAWAII:String = "HT";
		
		private static var nonDstOffsetDate:Date = new Date(2010, 1, 1);
		private static var dstOffsetDate:Date = new Date(2010, 7, 1);
		private static var observesDST:Boolean = (nonDstOffsetDate.timezoneOffset != dstOffsetDate.timezoneOffset);
		private static var timezone:String = EAST;
        

		public static function get zuluOffset():String
		{
			var offset:Number = nonDstOffsetDate.timezoneOffset / 60;

            if(offset > 11 || offset <= 5)
            {
                offset = 4; //defaulting to east coast
			    return String(offset);
            }

            return String(new Date().timezoneOffset / 60);
		}

		public static function get dstOffset():String
		{
            var offset:Number = dstOffsetDate.timezoneOffset / 60;

			if(offset > 10 || offset <= 4)
            {
                offset = 4; //defaulting to east coast
            }

            return String(offset);
		}

		public static function get nonDstOffset():String
		{
            var offset:Number = nonDstOffsetDate.timezoneOffset / 60;

            if(offset > 11 || offset <= 5)
            {
                offset = 5; //defaulting to east coast
            }
			return String(offset);
		}

		public static function get name():String
		{
			//Default to Eastern
			switch (nonDstOffset)
			{
				case "10":
					timezone = HAWAII; //Hawaii
					break;

				case "9":
					timezone = ALASKA; //Alaska
					break;

				case "8":
					timezone = PACIFIC;//Pacific
					break;

				case "7":
					timezone = MOUNTAIN;//Mountain
					if(!observesDST) timezone = ARIZONA;
					break;

				case "6":
					timezone = CENTRAL;//Central
					break;
			}

			return timezone;
		}
	}
}
