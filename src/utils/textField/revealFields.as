package utils.textField
{
	import flash.text.TextField;

	/**
	 * Reveal a <code>TextField</code> or <code>TextField</code>'s (visible true, alpha 1)
	 * @see #hide
	 */
	public function revealFields(... args):void
	{
		for (var i:int = 0; i < args.length; i++)
		{
			if (args[i] is TextField)
			{
				args[i].alpha = 1;
				args[i].visible = true;
			}
		}
	}
}