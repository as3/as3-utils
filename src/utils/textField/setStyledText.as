package utils.textField
{
	import flash.text.StyleSheet;
	import flash.text.TextField;

	/**
	 * Apply a <code>StyleSheet</code> to a <code>TextField</code> &amp; set its contents.
	 *
	 * @param tf <code>TextField</code> to display.
	 * @param str of text to apply.
	 * @param stylesheet to apply to the <code>TextField</code>'s (Default: <code>App.css</code>).
	 *
	 * @see sekati.core.App#css
	 */
	public function setStyledText(tf:TextField, str:String, stylesheet:StyleSheet = null):void
	{
		styleFields(tf, stylesheet);
		tf.htmlText = str;
	}
}