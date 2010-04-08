package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Set the <code>TextField</code> letter spacing formatting.
	 */
	public function setTextLetterSpacing(tf:TextField, spacing:Number = 0):void
	{
		var fmt:TextFormat = tf.getTextFormat();
		fmt.letterSpacing = spacing;
		tf.setTextFormat(fmt);
	}
}