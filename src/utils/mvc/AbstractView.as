package utils.mvc
{
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	
	/**
	 * A default implementation of IView based on MovieClip.
	 * 
	 * @author From original AS2 code by Colin Moock modified by Mims Wright http://www.moock.org/lectures/mvc/
	 */
	public class AbstractView extends MovieClip implements IView
	{
		
		/**
		 * Constructor. 
		 *
		 * @param model The data model that defines this view. 
		 * @param controller A specific controller to use (otherwise, the defaultController will be used)
		 */ 
		public function AbstractView ( model:*, controller:IController = null) {
			super();
			this.model = model;
			
			if (controller != null) {
				this.controller = controller;
			}
		}
		
		/** @inheritDoc */
		public function asDisplayObject():DisplayObject {
			return this;
		}
		
		/** @inheritDoc */
		public function get model():* { return _model; }
		public function set model(model:*):void { _model = model; }
		protected var _model:*;
		
		/** 
		 * The controller for the model that the view will use to modify it.
		 * If it is set to null, the default controller will be used.
		 */
		public function get controller():IController {
			// If a controller hasn't been defined yet...
			if (_controller == null) {
				// ...make one. Note that defaultController() is normally overridden 
				// by the AbstractView subclass so that it returns the appropriate
				// controller for the view.
				this.controller = getDefaultController( model );
				this.controller.view = this;
			}
			return controller;
		}
		public function set controller(controller:IController):void {
			_controller = controller;
			controller.view = this;
		}
		protected var _controller:IController;
		
		public function getDefaultController( model:* ):IController {
//			AbstractEnforcer.enforceMethod();
			return null;
		}
	}
}