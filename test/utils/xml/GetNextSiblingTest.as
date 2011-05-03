/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/3/11
 * Time: 2:28 PM
 */
package utils.xml {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class GetNextSiblingTest {

    [Test]
    public function requestedIndexShouldReturnNextNode() : void {

        var x:XML =
                    <root>
                        <stuff>value1</stuff>
                        <stuff>value2</stuff>
                        <stuff>value3</stuff>
                    </root>

        var sibling:* = getNextSibling(x.stuff[1]);

        assertThat(sibling, equalTo(x.stuff[2]));

    }
}
}
