package utils.object {



	/**
	 Determines if object contains no value(s).
	 @param obj Object to determine if empty.
	 @return Returns <code>true</code> if object is empty; otherwise <code>false</code>.
	 @example
	 <code>
	 var testNumber:Number;
	 var testArray:Array   = new Array();
	 var testString:String = "";
	 var testObject:Object = new Object();

	 trace(ObjectUtil.isEmpty(testNumber)); // traces "true"
	 trace(ObjectUtil.isEmpty(testArray));  // traces "true"
	 trace(ObjectUtil.isEmpty(testString)); // traces "true"
	 trace(ObjectUtil.isEmpty(testObject)); // traces "true"
	 </code>
	 */
	public function isEmpty(obj:*):Boolean {
		if(obj == undefined)
			return true;

		if(obj is Number)
			return isNaN(obj);

		if(obj is Array || obj is String)
			return obj.length == 0;

		if(obj is Object) {
			for(var prop:String in obj)
				return false;

			return true;
		}

		return false;
	}
}
