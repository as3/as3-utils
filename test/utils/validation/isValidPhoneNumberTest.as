/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/3/11
 * Time: 5:32 PM
 */
package utils.validation {
import org.hamcrest.assertThat;

import org.hamcrest.object.equalTo;

import utils.validation.isValidPhoneNumber;

public class isValidPhoneNumberTest {

    [Test]
    public function validNumberPasses() : void {

        assertThat(isValidPhoneNumber("123 456-7789"), equalTo(true));

    }

    [Test]
    public function validNumberNoDashesPasses() : void {

        assertThat(isValidPhoneNumber("123 456 7789"), equalTo(true));

    }

    //TODO: Should this be the intended behavior?
    [Test]
    public function validNumberWithPrefixFails() : void {

        assertThat(isValidPhoneNumber("1 123 456-7789"), equalTo(false));

    }


}
}
