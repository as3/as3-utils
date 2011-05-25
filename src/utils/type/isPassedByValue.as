package  utils.type
{
	import flash.utils.*;
	
	/**
	 * Checks to see if the class of <code>instance</code> is a primitive which will be copied by value
	 * rather than by pointer.
	 * The primitive types checked for are :
	 * Number
	 * int
	 * uint
	 * String
	 * Boolean
	 * 
	 * @author Mims Wright
	 * 
	 * @param instance - the object whos class you want to check.
	 * @return true if instance is is a primitive value or false if null or otherwise.
	 */
	public function isPassedByValue(instance:*):Boolean {
		if (instance == null) return false;
		//if (!isNaN(instance)) return true;
		if (instance is Number) return true;
		if (instance is int) return true;
		if (instance is uint) return true;
		if (instance is String) return true;
		if (instance is Boolean) return true;
		return false;
	}
}