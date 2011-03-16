package utils.mvc
{
	import utils.display.IDisplayObject;

	/**
	 * Specifies the minimum functionality that the "view" 
	 * of a Model/View/Controller triad must provide.
	 * 
	 * @author From original AS2 code by Colin Moock modified by Mims Wright  http://www.moock.org/lectures/mvc/
	 */
	public interface IView extends IDisplayObject
	{
		/** A reference to the model associated with this view. */
		function set model ( model:* ):void;
		function get model ():*;
		
		/** A reference to the model's controller. */
		function set controller ( controller:IController ):void;
		function get controller ():IController;
		
		/** 
		 * Returns an instance to a default implementation of the controller
		 * for the model.
		 */ 
		function getDefaultController ( model:* ):IController;
	}
}