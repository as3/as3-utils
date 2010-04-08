package utils.textField
{
	import flash.text.TextField;

	/**
	 * Set the <code>TextField</code> color formatting.
	 */
	public function setTextColor(tf:TextField, color:uint, backgroundColor:uint, borderColor:uint):void
	{
		tf.textColor = color;
		tf.background = true;
		tf.backgroundColor = backgroundColor;
		tf.border = true;
		tf.borderColor = borderColor;
	}
}