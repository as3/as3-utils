package utils.xml
{
	/**
	 * Returns the sibling before the specified node relative to the node's parent.
	 *
	 * @param x The node whose sibling before it will be returned.
	 *
	 * @return The sibling before the node. null if the node does not have
	 * a sibling before it, or if the node has no parent.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 */
	public function getPreviousSibling(x:XML):XML
	{
		return getSiblingByIndex(x, -1);
	}
}