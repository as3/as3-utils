package 
{
    import flash.display.Sprite;
    
    import org.flexunit.internals.TraceListener;
    import org.flexunit.listeners.CIListener;
    import org.flexunit.runner.FlexUnitCore;
    
    import utils.UtilsTestSuite;
    
    [SWF]
    
    public class UtilsTestRunner extends Sprite
    {
        public var core:FlexUnitCore;
        
        public function UtilsTestRunner()
        {
            super();
            run();
        }
        
        public function run():void 
        {
            core = new FlexUnitCore();
            core.addListener(new TraceListener());
            core.addListener(new CIListener());
            core.run(UtilsTestSuite);
        }
    }
}