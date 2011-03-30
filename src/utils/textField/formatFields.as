package utils.textField
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.text.TextField;
	import flash.text.TextFormat;

	/**
	 * Apply a <code>TextFormat</code> to a <code>TextField</code> or to all <code>TextField</code>'s in a <code>DisplayObjectContainer</code>.
	 * @param o                     <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 * @param textFormat    to apply to the <code>TextField</code>'s.
	 */
	public function formatFields(o:DisplayObject, textFormat:TextFormat):void
	{
		var tf:TextField;
		if (o is TextField)
		{
			tf = o as TextField;
			tf.setTextFormat(textFormat);
		}
		else if (o is DisplayObjectContainer)
		{
			var container:DisplayObjectContainer = o as DisplayObjectContainer;
			for (var i:int = 0; i < container.numChildren; i++)
			{
				if (container.getChildAt(i) is TextField)
				{
					tf = container.getChildAt(i) as TextField;
					tf.setTextFormat(textFormat);
				}
			}
		}
	}
}