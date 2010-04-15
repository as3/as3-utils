package utils.textField
{
	import flash.display.DisplayObject;
	import flash.text.StyleSheet;
	import flash.text.TextField;

	/**
	 * Apply the application stylesheet to a <code>TextField</code> or to all <code>TextField</code>'s in a <code>DisplayObject</code>.
	 *
	 * <p><b>Warning</b>: Unlike <code>formatFields</code> you must <i>reset</i> your <code>htmlText</code> to have the style applied.</p>
	 * @param o                     <code>DisplayObject</code> that either <i>is</i> or contains <code>TextField</code>'s.
	 * @param stylesheet    to apply to the <code>TextField</code>'s (Default: <code>App.css</code>).
	 * @see sekati.core.App#css
	 */
	public function styleFields(o:DisplayObject, stylesheet:StyleSheet):void
	{
		var css:StyleSheet = stylesheet;
		if (o is TextField)
		{
			var tf:TextField = o as TextField;
			tf.styleSheet = css;
		}
		else if (o is DisplayObject)
		{
			for (var i:String in o)
			{
				if (o[i] is TextField && !o[i].styleSheet)
				{
					o[i].styleSheet = css;
				}
			}
		}
	}
}