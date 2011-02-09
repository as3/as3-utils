package utils.align
{
	import flash.display.DisplayObject;
    import flash.geom.Point;
    import flash.geom.Rectangle;

    /**
	 * Horizontal center align object to target.
     * Alignment algorithm taken from:
     * http://chargedweb.com/labs/2010/07/27/alignutil_align_objects_easily/
     * Copyright 2010 Julius Loa | jloa@chargedweb.com
     * license:    MIT {http://www.opensource.org/licenses/mit-license.php}
     *
     * This algorith takes the objects rotation and scale into account.
     */
	public function xAlignCenter(item:DisplayObject, target:DisplayObject):void
	{
		//item.x = int(target.width / 2 - item.width / 2);

        var b:Rectangle = item.transform.pixelBounds;
        var bp:Point = target.globalToLocal(new Point(b.x, b.y));
        b.x = bp.x; b.y = bp.y;
        item.x = int((target.width - b.width)/2 + item.x - b.x);
	}


}