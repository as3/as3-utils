/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/2/11
 * Time: 4:40 PM
 */
package utils.xml {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

public class isValidXMLTest {

    [Test]
    public function validXMLShouldReturnTrue() : void {

        var s:String = "<goodxml></goodxml>";

        assertThat(isValidXML(s), equalTo(true))

    }

    [Test]
    public function invalidXMLShouldReturnFalse() : void {


        var s:String = "<badXml></badXmL>";

        assertThat(isValidXML(s), equalTo(false))

    }
}
}
