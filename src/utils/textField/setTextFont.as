package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Set the <code>TextField</code> font formatting.
	 */
	public function setTextFont(tf:TextField, fontName:String, fontSize:Number, isEmbedFont:Boolean = false, isBold:Boolean = false, isItalic:Boolean = false, isUnderline:Boolean = false):void
	{
		var fmt:TextFormat = tf.getTextFormat();
		fmt.font = fontName;
		fmt.size = fontSize;
		fmt.italic = isItalic;
		fmt.bold = isBold;
		fmt.underline = isUnderline;
		tf.embedFonts = isEmbedFont;
		tf.setTextFormat(fmt);
	}
}