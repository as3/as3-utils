package utils.object
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.object.equalTo;
	import org.hamcrest.object.hasProperties;
	import org.hamcrest.object.instanceOf;

	public class CreateInstanceTest
	{		
		[Test]
		public function createsAnInstanceOfGivenClass():void 
		{
			assertThat(
				"creates an instance of given class"
				, createInstance(Sprite)
				, instanceOf(Sprite)
				);
		}
		
		[Test]
		public function createsAnInstanceOfGivenClassWithConstructorArguments():void 
		{
			assertThat(
				"creates an instance of given class with constructor arguments"
				, createInstance(Event, ["eventType", true, false])
				, hasProperties({})
				);
		}
		
		[Test]
		public function worksForUpToTenConstructorArguments():void 
		{
			assertThat(createInstance(Consumer).consumed, equalTo([]));
			assertThat(createInstance(Consumer, []).consumed, equalTo([]));
			assertThat(createInstance(Consumer, [1]).consumed, equalTo([1]));
			assertThat(createInstance(Consumer, [1, 2]).consumed, equalTo([1, 2]));
			assertThat(createInstance(Consumer, [1, 2, 3]).consumed, equalTo([1, 2, 3]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4]).consumed, equalTo([1, 2, 3, 4]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5]).consumed, equalTo([1, 2, 3, 4, 5]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5, 6]).consumed, equalTo([1, 2, 3, 4, 5, 6]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5, 6, 7]).consumed, equalTo([1, 2, 3, 4, 5, 6, 7]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5, 6, 7, 8]).consumed, equalTo([1, 2, 3, 4, 5, 6, 7, 8]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5, 6, 7, 8, 9]).consumed, equalTo([1, 2, 3, 4, 5, 6, 7, 8, 9]));
			assertThat(createInstance(Consumer, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).consumed, equalTo([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
		}
	
		[Test(expected="ArgumentError")]
		public function explodesIfYouPassTooManyConstructorArguments():void 
		{
			createInstance(Consumer, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]);			
		}
		
		[Test(expected="ArgumentError")]
		public function explodesIfYouForgetRequiredConstructorArguments():void 
		{
			createInstance(Event);
		}
	}
}

// a little something to help test createInstance

internal class Consumer 
{
	private var _consumed:Array;
	
	public function Consumer(...rest) 
	{
		_consumed = rest;
	}
	
	public function get consumed():Array 
	{
		return _consumed;
	}
}