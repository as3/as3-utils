package utils.string {
	import utils.conversion.bytesToKilobytes;



	/**
	 * Convert bytes to a String ("X B" or "X kB")
	 * @param value Bytes count
	 * @return Result String
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function convertBytesString(value:uint):String {
		return (value <= 8192 ? (String(value) + " B") : (String(bytesToKilobytes(value)) + " kB"));
	}
}
