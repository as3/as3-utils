package utils.syncro
{
	public function addphase(name:String, priority:int = 0, ascending:Boolean = true):void
	{
		if(name in syncro.names)
			return;
		
		var phase:Phase = syncro.names[name] = new Phase(name, priority, ascending);
		syncro.phases.push(phase);
	}
}