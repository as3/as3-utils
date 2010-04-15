package utils.type
{
	import flash.utils.Proxy;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public function getType(value:Object):Class
	{
		if (value is Class)
		{
			return value as Class;
		}
		else if (value is Proxy)
		{
			return getDefinitionByName(getQualifiedClassName(value)) as Class;
		}
		else
		{
			return value.constructor as Class;
		}
	}
}