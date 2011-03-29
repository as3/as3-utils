package utils.align {



	/**
	 * Convenient horizontal align method with optional alignment argument
	 * @example <listing version="3.0">Alignment.hAlign( [ clip0, clip1, clip2], 10 );</listing>
	 * @param items An array of items
	 * @param args spacing The spacing between items in pixels as either a number or array or blank
	 */
	public function horizontalAlign(items:Array, ... args):void {
		if(args.length > 0) {
			if(args[0] is Array)
				horizontalAlignSpaceArray(items, args[0]);
			if(args[0] is Number)
				horizontalAlignSpaceNumber(items, args[0]);
		}
		else
			horizontalAlignNoSpace(items);
	}
}
