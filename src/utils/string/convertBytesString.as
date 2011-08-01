package utils.string {
	
	import utils.conversion.bytesToKilobytes;

	/**
	 * Convert bytes to a String ("X B" or "X kB")
	 * @param value Bytes count
	 * @return Result String
	 * @author Vaclav Vancura (http://vancura.org, http://twitter.com/vancura)
	 */
	public function convertBytesString(value:uint):String {
		return (value <= 8192 ? (String(value) + " B") : (String(bytesToKilobytes(value)) + " kB"));
	}
}
