package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Set the <code>TextField</code> leading formatting.
	 */
	public function setTextLeading(tf:TextField, space:Number = 0):void
	{
		var fmt:TextFormat = tf.getTextFormat();
		fmt.leading = space;
		tf.setTextFormat(fmt);
	}
}