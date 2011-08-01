package
{
	import flash.display.Sprite;
	
	import org.flexunit.internals.TraceListener;
	import org.flexunit.listeners.CIListener;
	import org.flexunit.runner.FlexUnitCore;
	import org.fluint.uiImpersonation.IVisualTestEnvironment;
	import org.fluint.uiImpersonation.VisualTestEnvironmentBuilder;

	public class UtilsTestRunner extends Sprite
	{
		private var core:FlexUnitCore;
		private var env:IVisualTestEnvironment;
		
		public function UtilsTestRunner()
		{
			super();
			
			// make the stage available to tests
			env = VisualTestEnvironmentBuilder.getInstance(this).buildVisualTestEnvironment();
						
			// run 
			core = new FlexUnitCore();
			core.addListener(new TraceListener());
			core.addListener(new CIListener());
			core.run( UtilsTestSuite );
		}
	}
}