/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/20/11
 * Time: 1:47 PM
 */
package utils.validation {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

import utils.validation.isValidEmailAddress;

public class isValidEmailAddress {

    [Test]
    public function goodEmailPasses() : void {

        assertThat(utils.validation.isValidEmailAddress("test@test.com"), equalTo(true))

    }

    [Test]
    public function emailWithSpaceFails() : void {

        assertThat(utils.validation.isValidEmailAddress("test@ test.com"), equalTo(false))

    }

    [Test]
    public function emailWithoutAtSymbolFails() : void {

        assertThat(utils.validation.isValidEmailAddress("testtest.com"), equalTo(false))

    }

    [Test]
    public function emailWithInvalidCharacterFails() : void {

        assertThat(utils.validation.isValidEmailAddress("test@te$t.com"), equalTo(false))

    }
}
}
