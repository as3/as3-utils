package utils.textField
{
	import flash.text.TextField;

	/**
	 * Truncate a multiline <code>TextField</code> after the defined number of lines of text.
	 * @param tf                            <code>TextField</code> to truncate.
	 * @param numAlllowedLines      before the remaining text is removed.
	 * @param isEllipsed            determines whether the text is ended with "..." or not.
	 */
	public function truncateMultilineText(tf:TextField, numAlllowedLines:uint, isEllipsed:Boolean = true):void
	{
		if (tf.bottomScrollV > numAlllowedLines)
		{
			var len:int = tf.text.length;
			for (var i:int = 0; i < len; i++)
			{
				tf.scrollV = tf.maxScrollV;
				if (tf.bottomScrollV > numAlllowedLines)
				{
					tf.text = tf.text.slice(0, -1);
				}
				else
				{
					var e:int = (isEllipsed) ? -3 : tf.text.lastIndexOf(" ");
					tf.text = tf.text.slice(0, e);
					tf.appendText("...");
					break;
				}
			}
		}
	}
}