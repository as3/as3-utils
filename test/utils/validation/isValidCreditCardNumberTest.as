/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/20/11
 * Time: 1:52 PM
 */
package utils.validation {
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;

import utils.validation.isValidCreditCardNumber;

public class isValidCreditCardNumberTest {

    [Test]
    public function ccBelowMinimum13ShouldFail() : void {

        assertThat(isValidCreditCardNumber("1234"), equalTo(false));

    }

    [Test]
    public function ccAboveMaximum16ShouldFail() : void {

        assertThat(isValidCreditCardNumber("123413123123213421341123412423412412341232314"), equalTo(false));

    }

    //Even CC length integrity testing
    //Each number is examined
    //if a number is divisible by 2 with no remainder (even) it gets doubled and added to the first group. If the result is number is greater than 9 then 9 is subtracted.
    //if a number is divisible by 2 with a remainder (odd) it gets added to the second group
    //The first group plus the second group should be divisible by 10 with no remainder

    [Test]
    public function ccEvenNumberLengthWithBadIntegrityShouldFail() : void {

        assertThat(isValidCreditCardNumber("12345678901234"), equalTo(false));

    }

    [Test]
    public function ccEvenNumberLengthWithGoodIntegrityShouldPass() : void {

        assertThat(isValidCreditCardNumber("72345678901234"), equalTo(true));

    }

    //Odd CC length integrity testing
    //Each number is examined
    //if a number is divisible by 1 with no remainder (odd) it gets doubled and added to the first group. If the result is number is greater than 9 then 9 is subtracted.
    //if a number is divisible by 1 with a remainder (even) it gets added to the second group
    //The first group plus the second group should be divisible by 10 with no remainder

    [Test]
    public function ccOddNumberLengthWithBadIntegrityShouldFail() : void {

        assertThat(isValidCreditCardNumber("123456789012345"), equalTo(false));

    }

    [Test]
    public function ccOddNumberLengthWithGoodIntegrityShouldPass() : void {

        assertThat(isValidCreditCardNumber("323456789012345"), equalTo(true));

    }

}
}
