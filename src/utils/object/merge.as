package utils.object
{
	/**
	 * Merge enumerable fields from a source Object to a target Object.
	 * 
	 * NOTE no checks are made to determine if the property is readable or writable. 
	 *  
	 * @param target Target
	 * @param source Source
	 * @return target
	 * 
	 * @example
	 * <listing version="3.0">
	 * 	var source:Object = { a: 1, d: 4 };
	 * 	var target:Object = { a: 0, b: 2, c: 3 }
	 * 	var result:Object = merge(target, source);
	 * 	trace(result.a, result.b, result.c, result.d);
	 * 	// 1 2 3 4
	 * </listing>
	 * 
	 * @author drewbourne
	 */
	public function merge(target:Object, source:Object):Object 
	{
		for (var field:Object in source || {}) 
		{
			target[field] = source[field];
		}
		
		return target;
	} 
}