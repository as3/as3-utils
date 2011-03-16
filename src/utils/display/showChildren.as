/**
 * Created by ${PRODUCT_NAME}.
 * User: jlindqui
 * Date: 3/9/11
 * Time: 10:21 AM
 * To change this template use File | Settings | File Templates.
 */
package utils.display
{
    import flash.display.DisplayObject;
    import flash.display.DisplayObjectContainer;

	/**
	 * 
	 * @param displayObjectContainer - the DisplayObjectContainer that you want to see all the children of
	 * This is useful for visual debugging of hidden objects.
	 */
    public function showChildren(displayObjectContainer:DisplayObjectContainer):void
    {
        var i:int = 0;
        while (i < displayObjectContainer.numChildren)
        {
            var childAt:DisplayObject = displayObjectContainer.getChildAt(i);
            childAt.visible = true;
            if (childAt is DisplayObjectContainer)
            {
                showChildren(DisplayObjectContainer(childAt));
            }
            i++;
        }
    }
}
