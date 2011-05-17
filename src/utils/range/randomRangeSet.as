package utils.range {
	import utils.number.randomIntegerWithinRange;



	/**
	 * Returns a set of random numbers inside a specific range (unique numbers is optional)
	 */
	public function randomRangeSet(min:Number, max:Number, count:Number, unique:Boolean):Array {
		var rnds:Array = new Array();
		if(unique && count <= max - min + 1) {
			//unique - create num range array
			var nums:Array = new Array();
			for(var i:Number = min; i <= max; i++) {
				nums.push(i);
			}
			for(var j:Number = 1; j <= count; j++) {
				// random number
				var rn:Number = Math.floor(Math.random() * nums.length);
				rnds.push(nums[rn]);
				nums.splice(rn, 1);
			}
		}
		else {
			//non unique
			for(var k:Number = 1; k <= count; k++) {
				rnds.push(randomIntegerWithinRange(min, max));
			}
		}
		return rnds;
	}
}
