package utils.textField
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.text.StyleSheet;
	import flash.text.TextField;

	/**
	 * Apply the application stylesheet to a <code>TextField</code> or to all <code>TextField</code>'s in a <code>DisplayObjectContainer</code>.
	 *
	 * <p><b>Warning</b>: Unlike <code>formatFields</code> you must <i>reset</i> your <code>htmlText</code> to have the style applied.</p>
	 * @param o                     <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 * @param stylesheet    to apply to the <code>TextField</code>'s (Default: <code>App.css</code>).
	 * @see sekati.core.App#css
	 */
	public function styleFields(o:DisplayObject, stylesheet:StyleSheet):void
	{
		var tf:TextField;
		var css:StyleSheet = stylesheet;
		if (o is TextField)
		{
			tf = o as TextField;
			tf.styleSheet = css;
		}
		else if (o is DisplayObjectContainer)
		{
			var container:DisplayObjectContainer = o as DisplayObjectContainer;
			for (var i:int = 0; i < container.numChildren; i++)
			{
				if (container.getChildAt(i) is TextField)
				{
					tf = container.getChildAt(i) as TextField;
					tf.styleSheet = css;
				}
			}
		}
	}
}