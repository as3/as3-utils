package utils.align
{
	import flash.display.DisplayObject;
    import flash.geom.Point;
    import flash.geom.Rectangle;

    /**
	 * Vertical center align object to target.
     *
     * Alignment algorithm taken from:
     * http://chargedweb.com/labs/2010/07/27/alignutil_align_objects_easily/
     * Copyright 2010 Julius Loa | jloa@chargedweb.com
     * license:    MIT {http://www.opensource.org/licenses/mit-license.php}
     *
     * This algorith takes the objects rotation and scale into account.
	 */
	public function yAlignCenter(item:DisplayObject, target:DisplayObject):void
	{
        var b:Rectangle = item.transform.pixelBounds;
        var bp:Point = target.globalToLocal(new Point(b.x, b.y));
        b.x = bp.x; b.y = bp.y;
        item.y = int((target.height - b.height)/2 + item.y - b.y);
	}
}