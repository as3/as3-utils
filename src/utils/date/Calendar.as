/**
 * User: John Lindquist
 * Date: 3/16/11
 * Time: 11:27 AM
 */
package utils.date
{
	/**
	 * Calendar is an exception to the "package-level function" rule
	 * 
	 * This class provides common dates (today, yesterday, tomorrow, last Sunday, next Thursday, the first of the year, the first of June, etc)
	 * all based on "now"
	 * 
	 * To determine whether or not a date belongs in "Calendar", simply ask yourself, "Is this date based on 'now'?"
	 * 
	 * These properties will leverage many of the package-level functions such as "getNextDay", etc, but will simply be based on "now"
	 */
	public class Calendar
	{
		public var now:Date = new Date();
		public var today:Date = new Date(now.getFullYear(), now.getMonth(), now.getDate(), 0, 0, 0, 0);
	}
}