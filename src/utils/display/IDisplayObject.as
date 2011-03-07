package utils.display
{
	import flash.display.DisplayObject;
	
	/**
	 * An interface to work around the lack of interface for display objects.
	 * Especially useful when you want to type a variable with an interface
	 * and add it to the stage without type casting to DisplayObject each time
	 * (and running the risk of an error). 
	 * 
	 * @example <listing version="3.0">
	 * var d:IDisplayObject = new ClassThatImplementsIDisplayObject();
	 * addChild(d.asDisplayObject());
	 * </listing>
	 * 
	 * @author Mims H. Wright
	 */
	public interface IDisplayObject
	{
		/** 
		 * Returns a representation of the object as a DisplayObject.
		 * Usually would return the object itself.
		 */ 
		function asDisplayObject():DisplayObject;
	}
}