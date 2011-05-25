package utils.object {



	/**
	 * Searches the first level properties of an Object for a another Object.
	 * @param obj Object to search in.
	 * @param member Object to search for.
	 * @return true if Object was found
	 * @author Aaron Clinger
	 * @author Shane McCartney
	 * @author David Nelson
	 */
	public function contains(obj:Object, member:Object):Boolean {
		for(var prop:String in obj) {
			if(obj[prop] == member) {
				return true;
			}
		}

		return false;
	}
}
