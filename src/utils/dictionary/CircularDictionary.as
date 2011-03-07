package utils.dictionary
{
	import flash.errors.IllegalOperationError;
	import flash.utils.Dictionary;

	/**
	 * A dictionary which allows a pairing of two values to point to each other.
	 * For example, if you have two objects, A and B, A would point to B and 
	 * B would point to A. 
	 * 
	 * @example <listing version="3.0">
	 * var dict:CircularDictionary = new CircularDictionary();
	 * dict.addPair(A, B);
	 * dict.getCounterpartTo(A); // B
	 * dict.getCounterpartTo(B); // A
	 * dict.getCounterpartTo(dict.getCounterpartTo(A)); // A
	 * dict.dictionary[B]; // A. Same as getCounterpartTo(B)
	 * dict.removePair(B); // removes both A and B.
	 * </listing>
	 * 
	 * @author Mims H. Wright
	 */
	public class CircularDictionary
	{
		private var _dictionary:Dictionary;
		public function get dictionary():Dictionary { return _dictionary; }
		
		/**
		 * Constructor.
		 * 
		 * @param useWeakReferences Indicates whether the internal dictionary should use weak references. 
		 */
		public function CircularDictionary(useWeakReferences:Boolean = false) 
		{
			_dictionary = new Dictionary ( useWeakReferences );
		}
		
		/**
		 * Adds a related pair of values.
		 * 
		 * @throws IllegalOperationError If the same key is added more than once.
		 * 
		 * @param a The first value (references b)
		 * @param b The second value (references a)
		 */
		public function addPair(a:*, b:*):void {
			if ( _dictionary[a] == undefined && _dictionary[b] == undefined) {
				_dictionary[a] = b;
				_dictionary[b] = a;
				return;
			} 
			throw new IllegalOperationError ("You cannot use the same key or value more than once.");
		}
		
		/**
		 * Removes a related pair of values.
		 * 
		 * @param aOrB Either value, a or b. Both references to each other are removed.
		 * @returns The counterpart to whatever value you provided.
		 */
		public function removePair (aOrB:*):* {
			var counterpart:* = _dictionary[aOrB];
			delete _dictionary[aOrB];
			delete _dictionary[counterpart];
			return counterpart;
		}
		
		/**
		 * Returns the corresponding value to the key you provided. If key = a, 
		 * returns b, and vice versa. 
		 */ 
		public function getCounterpartTo(key:*):* {
			return _dictionary[key];
		}
	}
}