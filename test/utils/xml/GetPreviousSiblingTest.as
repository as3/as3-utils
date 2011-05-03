/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/3/11
 * Time: 2:08 PM
 */
package utils.xml {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class GetPreviousSiblingTest {

    [Test]
    public function callShouldReturnPreviousNode() : void {

        var x:XML =
                    <root>
                        <stuff>value1</stuff>
                        <stuff>value2</stuff>
                        <stuff>value3</stuff>
                    </root>

        var sibling:* = getPreviousSibling(x.stuff[2]);

        assertThat(sibling, equalTo(x.stuff[1]));

    }
}
}
