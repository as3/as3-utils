package utils.conversion
{
    import utils.conversion.bytesToKilobytes;
    
    /**
     * Convert bytes to megabytes
     * 
     * @param Number bytes Bytes
     * @return Number Megabytes
     * @author Webysther Faria <webysther@gmail.com>
     */	
	public function bytesToMegabytes(bytes:Number):Number
	{
		return bytesToKilobytes( bytes ) / 1024;
	}
}