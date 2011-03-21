package utils.textField
{
	import flash.display.DisplayObject;
	import flash.text.TextField;

	/**
	 * Clear a <code>TextField</code> text or to all <code>TextField</code>'s texts in a <code>DisplayObject</code>.
	 * @param o             <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 */
	public function clearFields(o:DisplayObject):void
	{
		if (o is TextField)
		{
			var tf:TextField = o as TextField;
			tf.text = tf.htmlText = '';
		}
		else if (o is DisplayObject)
		{
			for (var i:String in o)
			{
				if (o[i] is TextField)
				{
					o[i].text = o[i].htmlText = '';
				}
			}
		}
	}
}