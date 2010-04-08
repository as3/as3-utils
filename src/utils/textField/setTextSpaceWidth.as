package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Set the <code>TextField</code>'s width for space characters.
	 */
	public function setTextSpaceWidth(tf:TextField, space:Number = 1):void
	{
		var fmt:TextFormat = new TextFormat();
		fmt.letterSpacing = space;
		var i:int = 0;
		while (tf.text.indexOf(" ", i) > -1)
		{
			var index:int = tf.text.indexOf(" ", i);
			tf.setTextFormat(fmt, index, index + 1);
			i = index + 1;
		}
	}
}