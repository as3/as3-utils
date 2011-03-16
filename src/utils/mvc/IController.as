package utils.mvc
{
	
	
	/**
	 * Specifies the minimum functionality that the "controller" of
	 * a Model/View/Controller triad must provide.
	 * 
	 * @author From original AS2 code by Colin Moock modified by Mims Wright http://www.moock.org/lectures/mvc/
	 */
	public interface IController
	{
		/**
		 * Sets the model for this controller.
		 */
		function set model (model:*):void;
		
		/**
		 * Returns the model for this controller.
		 */
		function get model ():*;
		
		/**
		 * Sets the view this controller is servicing.
		 */
		function set view (view:IView):void;
		
		/**
		 * Returns this controller's view.
		 */
		function get view ():IView;
	}
}