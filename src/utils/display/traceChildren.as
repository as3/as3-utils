package utils.display {
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;



	/**
	 * trace() children of the DisplayObjectContainer.
	 * @param container DisplayObjectContainer to get children of
	 * @param indentLevel Indentation level (default 0)
	 * @author Vaclav Vancura (<a href="http://vancura.org">vancura.org</a>, <a href="http://twitter.com/vancura">@vancura</a>)
	 */
	public function traceChildren(container:DisplayObjectContainer, indentLevel:int = 0):void {
		for(var i:int = 0; i < container.numChildren; i++) {
			var thisChild:DisplayObject = container.getChildAt(i);
			var output:String = "";

			for(var j:int = 0; j < indentLevel; j++) output += "   ";

			output += "+  " + thisChild.name + " = " + String(thisChild);

			trace(output);

			if(thisChild is DisplayObjectContainer) traceChildren(DisplayObjectContainer(thisChild), indentLevel + 1);
		}
	}
}
