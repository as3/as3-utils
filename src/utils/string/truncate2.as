package utils.string {



	/**
	 * Returns a String truncated to a specified length with optional suffix.
	 * @param value Input String
	 * @param length Length the String should be shortened to
	 * @param suffix (optional, default="...") String to append to the end of the truncated String
	 * @returns String String truncated to a specified length with optional suffix
	 */
	public function truncate2(value:String, length:uint, suffix:String = "..."):String {
		var out:String = "";
		var l:uint = length;

		if(value) {
			l -= suffix.length;

			var trunc:String = value;

			if(trunc.length > l) {
				trunc = trunc.substr(0, l);

				if(/[^\s]/.test(value.charAt(l))) {
					trunc = rtrim(trunc.replace(/\w+$|\s+$/, ""));
				}

				trunc += suffix;
			}

			out = trunc;
		}

		return out;
	}
}
