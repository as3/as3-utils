package utils.geom
{
	/**
	 * An enumeration of the four sides of a rectangle. 
	 * Useful for working with tile engines, creating borders, etc.
	 */ 
	public class Side
	{
		public static const TOP:int = 1;
		public static const BOTTOM:int = 2;
		public static const LEFT:int = 4;
		public static const RIGHT:int = 8;
		
		public static const NONE:int = 0;
		public static const ALL:int = TOP | BOTTOM | LEFT | RIGHT;
	}
}