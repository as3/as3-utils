package utils.object
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.filters.GlowFilter;
	
	import org.hamcrest.assertThat;
	import org.hamcrest.core.throws;
	import org.hamcrest.number.closeTo;
	import org.hamcrest.object.hasProperties;
	import org.hamcrest.object.instanceOf;

	public class CreateTest
	{		
		[Test]
		public function createShouldCreateAnInstanceOfTheGivenClass():void 
		{
			assertThat(
				"should create an instance of the given Class"
				, create(Sprite)
				, instanceOf(Sprite)
				);
		}
		
		[Test]
		public function createShouldUseConstructorArguments():void 
		{
			assertThat(
				"should use constructor arguments if given"
				, create(Event, [Event.COMPLETE, true])
				, hasProperties({ type: Event.COMPLETE, bubbles: true })
				);
		}
		
		[Test]
		public function createShouldPopulateTheGivenPropertiesOnTheInstance():void 
		{
			assertThat(
				"should use constructor arguments if given"
				, create(Sprite, null, { x: 50, y: 10 })
				, hasProperties({ x: 50, y: 10 })
				);
		}
		
		[Test]
		public function createShouldSupportBothConstructorArgumentsAndProperties():void 
		{
			assertThat(
				"should constructor arguments THEN properties"
				, create(GlowFilter, [0xFF3333, 1.0], { alpha: 0.5 })
				, hasProperties({ color: 0xFF3333, alpha: closeTo(0.5, 0.01) })
				);
		}
	}
}