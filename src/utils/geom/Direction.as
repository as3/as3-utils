package utils.geom
{
	
	/**
	 * An enumeration of the four cardinal directions.
	 * Mirrors the directions in Side.
	 * 
	 * Make a hybrid direction using '|', e.g. <code>var NW:int = NORTH | WEST;</code>
	 * 
	 * @author Mims Wright
	 * 
	 * @see utils.geom.Side
	 */	
	public class Direction
	{
		public static const UP:int = 1;
		public static const DOWN:int = 2;
		public static const LEFT:int = 4;
		public static const RIGHT:int = 8;
		
		public static const NORTH:int = UP;
		public static const SOUTH:int = DOWN;
		public static const WEST:int = LEFT;
		public static const EAST:int = RIGHT;
		
		public static const NONE:int = 0;
		public static const ALL:int = UP | DOWN | LEFT | RIGHT;
	}
}