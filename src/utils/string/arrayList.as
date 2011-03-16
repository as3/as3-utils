package utils.string {



	/**
	 * Convert an Array to a list.
	 * @param a Input Array
	 * @return List as "item1, item2, item3"
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function arrayList(a:Array):String {
		var out:String = "";

		for each(var i:String in a) {
			out += i + ", ";
		}

		return out.substr(0, out.length - 2);
	}
}
