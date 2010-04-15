package utils.textField
{
	import flash.display.DisplayObject;
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Apply a <code>TextFormat</code> to a <code>TextField</code> or to all <code>TextField</code>'s in a <code>DisplayObject</code>.
	 * @param o                     <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 * @param textFormat    to apply to the <code>TextField</code>'s.
	 */
	public function formatFields(o:DisplayObject, textFormat:TextFormat):void
	{
		if (o is TextField)
		{
			var tf:TextField = o as TextField;
			tf.setTextFormat(textFormat);
		}
		else if (o is DisplayObject)
		{
			for (var i:String in o)
			{
				if (o[i] is TextField && !o[i].styleSheet)
				{
					o[i].setTextFormat(textFormat);
				}
			}
		}
	}
}