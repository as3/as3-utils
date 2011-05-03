package utils.xml
{
     /**
	 * Returns the sibling at the index specified relative to the node's parent.
	 *
	 * @param x The node whose sibling will be returned.
	 *
	 * @return The sibling of the node at the specified position. null if the node does not have
	 * a sibling at that position, or if the node has no parent.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
     *
     * @example Getting a sibling 2 positions behind a node
     * <listing version="3.0" >
     * var x:XML =
     *               <root>
     *                  <stuff>value1</stuff>
     *                  <stuff>value2</stuff>
     *                  <stuff>value3</stuff>
     *              </root>;
     *
     * //Request sibling 2 positions before "value3"
     * var sibling:XML = getSiblingByIndex(x.stuff[2], -2);
     *
     * //returns "value1"
     *</listing>
	 */
	public function getSiblingByIndex(x:XML, count:int):XML
	{
		var out:XML;

		try
		{
			out = x.parent().children()[x.childIndex() + count];
		}
		catch (e:Error)
		{
			return null;
		}

		return out;
	}
}