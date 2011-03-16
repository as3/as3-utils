package utils.object {



	/**
	 * Assign properties from params to an Object.
	 * @param obj Target Object
	 * @param params Source Object
	 * @return Resulting Object
	 */
	public function assign(obj:Object, params:Object):Object {
		var out:Object = (obj);

		for(var i:String in params) {
			//noinspection EmptyCatchBlockJS,UnusedCatchParameterJS
			try {
				out[i] = params[i];
			}
			catch(err:Error) {
			}
		}

		return out;
	}
}
