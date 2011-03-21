package utils.textField
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.text.TextField;

	/**
	 * Clear a <code>TextField</code> text or to all <code>TextField</code>'s texts in a <code>DisplayObjectContainer</code>.
	 * @param o             <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 */
	public function clearFields(o:DisplayObject):void
	{
		var tf:TextField;
		if (o is TextField)
		{
			tf = o as TextField;
			tf.text = tf.htmlText = '';
		}
		else if (o is DisplayObjectContainer)
		{
			var container:DisplayObjectContainer = o as DisplayObjectContainer;
			for (var i:int = 0; i < container.numChildren; i++)
			{
				if (container.getChildAt(i) is TextField)
				{
					tf = container.getChildAt(i) as TextField;
					tf.text = tf.htmlText = '';
				}
			}
		}
	}
}