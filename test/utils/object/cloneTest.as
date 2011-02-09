package utils.object
{
    import org.hamcrest.assertThat;
    import org.hamcrest.object.hasProperties;

    public class cloneTest
    {
        [Test]
        public function clone_creates_object_with_equal_properties():void
        {
            var originalObject:SimpleObject = new SimpleObject();
            var cloneObject:Object;

            cloneObject = clone(originalObject);

            assertThat(
                    "cloned object properties equal original object properties",
                    cloneObject,
                    hasProperties({propOne:"propOne",propTwo:true,propThree:10})
                    );
        }

    }
}

class SimpleObject
{
    public var propOne:String = "propOne";
    public var propTwo:Boolean = true;
    public var propThree:int = 10;
}