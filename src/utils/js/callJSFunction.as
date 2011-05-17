package utils.js {
	import flash.external.ExternalInterface;



	/**
	 * Call a JS function.
	 * @param func Name of the function to be called
	 * @param arg1 Argument 1
	 * @param arg2 Argument 2
	 * @param arg3 Argument 3
	 * @param arg4 Argument 4
	 * @throws Error if empty function name supplied
	 * @throws Error if SecurityError occurred
	 * @throws Error if Error occurred
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function callJSFunction(func:String, arg1:* = null, arg2:* = null, arg3:* = null, arg4:* = null):void {
		if(func == "") {
			throw new Error("A valid function argument must be supplied");
		}

		// track avea if a type is supplied
		if(ExternalInterface.available) {
			try {
				ExternalInterface.call(func, arg1, arg2, arg3, arg4);
			}
			catch(error:SecurityError) {
				throw new Error(func + " request failed. A SecurityError occurred: " + error.message + "\n");
			}
			catch (error:Error) {
				throw new Error(func + " request failed. An Error occurred: " + error.message + "\n");
			}
		}

		else {
			throw new Error(func + " request Failed. External interface is not available for this container. If you're trying to use it locally, try using it through an HTTP address.");
		}
	}
}
