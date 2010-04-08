package utils.xml
{
	/**
	 * Returns the next sibling of the specified node relative to the node's parent.
	 *
	 * @param x The node whose next sibling will be returned.
	 *
	 * @return The next sibling of the node. null if the node does not have
	 * a sibling after it, or if the node has no parent.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 */
	public function getNextSibling(x:XML):XML
	{
		return getSiblingByIndex(x, 1);
	}
}