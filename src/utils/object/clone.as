package utils.object
{
	import flash.utils.ByteArray;

	public function clone(obj:Object):Object
	{
		const byt:ByteArray = new ByteArray();
		byt.writeObject(obj);
		byt.position = 0;
		return byt.readObject();
	}
}