package utils.syncro
{
	import utils.display.wait;

	public function invalidate(target:Object, depth:int, name:String):void
	{
		if(!(name in syncro.names))
			return;
		
		var phase:Array = syncro.phases.filter(function(e:Phase, ...args):Boolean{
			return e.name == name;
		})[0];
		
		if(!phase || phase.indexOf(target) != -1)
			return;
		
		phase.splice(depth, 0, target);
		
		if(syncro.invalidated)
			return;
		
		syncro.invalidated = true;
		wait(1, render);
	}
}
