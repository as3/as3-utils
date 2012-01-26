package utils.mvc
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	/**
	 * Specifies the minimum functionality that the "model" of
	 * a Model/View/Controller triad must provide.
	 * 
	 * @author Mims Wright
	 */
	public class AbstractModel extends EventDispatcher implements IModel
	{
		public function AbstractModel()
		{
			super();
		}
	}
}