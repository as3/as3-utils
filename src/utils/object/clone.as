package utils.object
{
	import flash.utils.ByteArray;

    /**
     * Creates a generic object clone of a given object. Does <strong>not</strong> retain type.
     *
     * @param obj
     * @return
     */
	public function clone(obj:Object):Object
	{
		const byt:ByteArray = new ByteArray();
		byt.writeObject(obj);
		byt.position = 0;
		return byt.readObject();
	}
}