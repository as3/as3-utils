package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;

	import utils.validation.isBlank;

	/**
	 * Set the text of a <code>TextField</code> while preserving the formatting (leading, kerning, etc).
	 * XXX - Warning: htmlText and styles can break the formatting: no known fix as of yet.
	 */
	public function setFormattedText(tf:TextField, str:String, autoSize:Boolean = true):void
	{
		var s:String = (isBlank(str)) ? " " : str;
		if (autoSize)
		{
			tf.autoSize = TextFieldAutoSize.LEFT;
		}
		var textFormat:TextFormat = tf.getTextFormat();
		if (tf.type == TextFieldType.INPUT)
		{
			tf.text = s;
		}
		else
		{
			tf.htmlText = s;
		}
		tf.setTextFormat(textFormat);
	}
}