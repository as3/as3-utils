/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/24/11
 * Time: 11:24 AM
 */
package utils.validation {
import org.flexunit.asserts.fail;

public class IsUSAStateAbbreviationTest {

    [Test]
    public function IsUSAStateAbbreviationTest() {

        new Array('ak', 'al', 'ar', 'az', 'ca', 'co', 'ct', 'dc', 'de', 'fl', 'ga', 'hi', 'ia', 'id', 'il', 'in', 'ks', 'ky', 'la', 'ma', 'md', 'me', 'mi', 'mn', 'mo', 'ms', 'mt', 'nb', 'nc',
					  'nd', 'nh', 'nj', 'nm', 'nv', 'ny', 'oh', 'ok', 'or', 'pa', 'ri', 'sc', 'sd', 'tn', 'tx', 'ut', 'va', 'vt', 'wa', 'wi', 'wv', 'wy');

//        assertThat(isUSAStateAbbreviation("DE"),
//			equalTo())

        fail("test remains to be implemented")
    }
}
}
