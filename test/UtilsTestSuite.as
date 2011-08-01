package
{
	import org.flexunit.runners.Suite;
	
	import utils.align.AlignCenterTest;
	import utils.align.AlignLeftTest;
	import utils.align.AlignRightTest;
	import utils.date.GetNextDayTest;
	import utils.date.GetPrevDayTest;
	import utils.date.GetTimeElapsedStringTest;
	import utils.date.calendar.CalendarTests;
	import utils.dictionary.CircularDictionaryTest;
	import utils.geom.CartesianToPolarCoordinatesTest;
	import utils.geom.PolarToCartesianCoordinatesTest;
	import utils.number.ClampTest;
	import utils.number.ToHexTest;
	import utils.object.CloneTest;
	import utils.object.ContainsTest;
	import utils.object.CreateInstanceTest;
	import utils.object.CreateTest;
	import utils.object.MergeTest;
	import utils.range.RandomRangeDateTest;
	import utils.string.NumberToStringTest;
	import utils.string.StringHasValueTest;
	import utils.type.IsPassedByValueTest;
	import utils.type.StrictIsTest;
	import utils.validation.EncodeCreditCardNumberTest;
	import utils.validation.GetCreditCardProviderTest;
	import utils.validation.IsBlankTest;
	import utils.validation.IsCreditCardTest;
	import utils.validation.IsEmailTest;
	import utils.validation.IsNumericTest;
	import utils.validation.IsPOBoxTest;
	import utils.validation.IsUSAStateAbbreviationTest;
	import utils.validation.IsUrlTest;
	import utils.validation.IsValidCreditCardNumberTest;
	import utils.validation.IsValidEmailAddressTest;
	import utils.validation.IsValidExpirationDateTest;
	import utils.validation.IsValidPhoneNumberTest;
	import utils.xml.GetNextSiblingTest;
	import utils.xml.GetPreviousSiblingTest;
	import utils.xml.GetSiblingByIndexTest;
	import utils.xml.IsValidXMLTest;

 	Suite;
	
	[RunWith("org.flexunit.runners.Suite")]
	[Suite]
	public class UtilsTestSuite
	{
		// utils.align
		public var alignCenterTest:AlignCenterTest;
		public var alignLeftTest:AlignLeftTest;
		public var alighRightTest:AlignRightTest;
		
		// utils.date.calendar
		public var calendarTest:CalendarTests;
		
		// utils.date
		public var getNextDayTest:GetNextDayTest;
		public var getPrevDayTest:GetPrevDayTest;
		public var getTimeElapsedStringTest:GetTimeElapsedStringTest;
		
		// utils.dictionary
		public var circularDictionaryTest:CircularDictionaryTest;
		
		// utils.geom
		public var cartesianToPolarCoordinatesTest:CartesianToPolarCoordinatesTest;
		public var polarToCartesianCoordinatesTest:PolarToCartesianCoordinatesTest;
		
		// utils.number
		public var clampTest:ClampTest;
		public var toHexTest:ToHexTest;
		
		// utils.object
		public var cloneTest:CloneTest;
		public var containsTest:ContainsTest;
		public var createInstanceTest:CreateInstanceTest;
		public var createTest:CreateTest;
		public var mergeTest:MergeTest;
		
		// utils.range
		public var randomRangeDateTest:RandomRangeDateTest;
		
		// utils.string
		public var numberToStringTest:NumberToStringTest;
		public var stringHasValueTest:StringHasValueTest;
		
		// utils.type
		public var isPassedByValueTest:IsPassedByValueTest;
		public var strictIsTest:StrictIsTest;
		
		// utils.validation
//		public var encodeCreditCardNumberTest:EncodeCreditCardNumberTest;
//		public var getCreditCardProviderTest:GetCreditCardProviderTest;
//		public var isBlankTest:IsBlankTest;
//		public var isCreditCardTest:IsCreditCardTest;
//		public var isEmailTest:IsEmailTest;
//		public var isNumericTest:IsNumericTest;
//		public var isPOBoxTest:IsPOBoxTest;
//		public var isUrlTest:IsUrlTest;
//		public var isUSAStateAbbreviation:IsUSAStateAbbreviationTest;
		public var isValidCreditCardNumberTest:IsValidCreditCardNumberTest;
		public var isValidEmailAddress:IsValidEmailAddressTest;
		public var isValidExpirationDate:IsValidExpirationDateTest;
		public var isValidPhoneNumberTest:IsValidPhoneNumberTest;
		
		// utils.xml
		public var getNextSiblingTest:GetNextSiblingTest;
		public var getPreviousSiblingTest:GetPreviousSiblingTest;
		public var getSiblingByIndexTest:GetSiblingByIndexTest;
		public var isValidXMLTest:IsValidXMLTest;
	}
}