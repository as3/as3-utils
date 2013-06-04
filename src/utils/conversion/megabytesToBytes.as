package utils.conversion
{
    import utils.conversion.kilobytesToBytes;
    
    /**
     * Convert megabytes to bytes
     * 
     * @param Number bytes Megabytes
     * @return Number Bytes
     * @author Webysther Faria <webysther@gmail.com>
     */	
	public function megabytesToBytes(bytes:Number):Number
	{
		return kilobytesToBytes( bytes ) * 1024;
	}
}