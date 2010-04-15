package utils.color
{
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	/**
	 * @private
	 *
	 * Sample & average a colorspace value (RGB or HSL) value from a display object or one of its region.
	 * @param src                   of the display object.
	 * @param region                to sample from [Default: null = entire src object].
	 * @param accuracy              percentage of pixels to sample when averaging.
	 * @colorspace                  to be sampled. Valid arguments are <code>'r', 'g', 'b', 'h', 's', 'l', 'v'</code>.
	 * @return                              the sampled average value requested from the colorspace.
	 */
	public function averageColorProperty(src:DisplayObject, region:Rectangle = null, accuracy:Number = 0.01, colorspace:String = 'l'):Number
	{
		if (!region)
		{
			region = new Rectangle(0, 0, src.width, src.height);
		}
		var offset:int = 1 / accuracy;
		var total:int;
		var count:int;
		// loop thru x/y pixels by offset
		for (var i:int = region.x; i < (region.x + region.width); i += offset)
		{
			for (var j:int = region.y; j < (region.y + region.height); j += offset)
			{
				var hex:uint = getColorFromDisplayObject(src, i, j);
				var obj:Object = getRGB(hex);
				if (colorspace == "h" || colorspace == "s" || colorspace == "l")
				{
					var hsl:Object = RGBtoHSL(obj.r, obj.g, obj.b);
					obj = hsl;
				}
				if (colorspace == "v")
				{
					var hsv:Object = RGBtoHSV(obj.r, obj.g, obj.b);
					obj = hsv;
				}
				total += obj[colorspace];
				count++;
					//trace( "colorspace: '" + colorspace + "' = " + obj[colorspace] );
			}
		}
		// return the average value
		return total / count;
	}
}