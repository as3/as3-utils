package utils.object
{
	import flash.utils.describeType;

	public function inspect(obj:Object, depth:int = 2):String
	{
		var scan:Function = function(obj:Object, depth:int, prefix:String):String
		{
			if (depth < 1) return String(obj);

			const classDef:XML = describeType(obj);

			var str:String = "";
			for each(var variable:XML in classDef.variable)
			{
				str += prefix + variable.@name + " : " + scan(obj[variable.@name], depth - 1, prefix + "\t") + "\n";
			}

			/*for each(var accessor:XML in classDef.accessor.(@access == "readwrite" || @access == "readonly"))
			 {
			 str += prefix + accessor.@name + " : " + scan(obj[accessor.@name], depth - 1, prefix + "\t") + "\n";
			 }*/

			for (var s in obj)
			{
				str += prefix + s + " = " + scan(obj[s], depth - 1, prefix + "\t") + "\n";
			}
			return str != "" ? ("[" + classDef.@name + "] {\n" + str + prefix + "}\n") : ((obj != null) ? obj + "" : "null");
		}


		return scan(obj, depth, "");
	}
}