/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/3/11
 * Time: 12:04 PM
 */
package utils.xml {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class GetSiblingByIndexTest {

    [Test]
    public function requestedIndexShouldReturnProperNode() : void {

        var x:XML =
                    <root>
                        <stuff>value1</stuff>
                        <stuff>value2</stuff>
                        <stuff>value3</stuff>
                    </root>

        var sibling:* = getSiblingByIndex(x.stuff[2], -1);

        assertThat(sibling, equalTo(x.stuff[1]))

    }

}
}
