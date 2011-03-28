package utils.event
{
	public function trashSafeEventHandler(func:Function):Function
	{
		if(!(func in safeEventHandlers))
			return null;
		
		const handler:Function = safeEventHandlers[func];
		delete safeEventHandlers[func];
		return handler;
	}
}