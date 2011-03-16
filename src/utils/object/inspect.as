package utils.object {
	import flash.utils.describeType;



	/**
	 * Scan an Object.
	 * @param obj Object to be scanned
	 * @param depth Depth of scanning
	 * @return Scan result
	 */
	public function inspect(obj:Object, depth:int = 10, prefix:String = "\t"):String {
		var scan:Function = function(obj:Object, depth:int, prefix:String):String {
			var out:String;

			if(depth < 1) {
				out = obj is String ? "\"" + obj + "\"" : String(obj);
			} else {
				const classDef:XML = describeType(obj);
				var str:String = "";

				for each(var variable:XML in classDef.variable) {
					str += prefix + variable.@name + " = " + scan(obj[variable.@name], depth - 1, prefix + "\t") + "\n";
				}

				for(var s:String in obj) {
					str += prefix + s + "=" + scan(obj[s], depth - 1, prefix + "\t") + "\n";
				}

				//noinspection NestedConditionalExpressionJS,NegatedConditionalExpressionJS
				out = str == "" ? ((obj != null) ? (obj is String ? "\"" + obj + "\"" : obj + "") : "null") : ("[" + classDef.@name + "] {\n" + str + (prefix.substr(0, prefix.length - 1)) + "}");
			}

			return out;
		};

		return prefix + scan(obj, depth, prefix + "\t");
	}
}
