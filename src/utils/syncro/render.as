package utils.syncro
{
	public function render():void
	{
		var p:Array = syncro.phases;
		p.sortOn('priority');
		
		//Set this before validating.
		syncro.invalidated = false;
		
		for(var i:int = 0, n:int = p.length; i < n; i += 1)
			Phase(p[i]).render();
	}
}