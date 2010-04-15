package utils.textField
{
	import flash.text.TextField;

	/**
	 * Hide a <code>TextField</code> or <code>TextField</code>'s from display (visible false, alpha 0).
	 * @see #reveal
	 */
	public function hideFields(... args):void
	{
		for (var i:int = 0; i < args.length; i++)
		{
			if (args[i] is TextField)
			{
				args[i].alpha = 0;
				args[i].visible = false;
			}
		}
	}
}