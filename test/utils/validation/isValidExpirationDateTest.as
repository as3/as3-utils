/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: 5/20/11
 * Time: 1:34 PM
 */
package utils.validation {
import org.hamcrest.assertThat;

import org.hamcrest.object.equalTo;

import utils.validation.isValidExpirationDate;

public class isValidExpirationDateTest {

    [Test]
    public function expirationOfNextYearShouldPass() : void {

        assertThat(isValidExpirationDate(1, new Date().getFullYear() + 1), equalTo(true));

    }

    [Test]
    public function expirationOfLastYearShouldFail() : void {

        assertThat(isValidExpirationDate(1, new Date().getFullYear() - 1), equalTo(false));

    }

    [Test]
    public function expirationOfSameYearButUpcomingMonthShouldPass() : void {

        assertThat(isValidExpirationDate(new Date().getMonth() + 1, new Date().getFullYear()), equalTo(true));

    }

    [Test]
    public function expirationOfSameYearButPastMonthShouldFail() : void {

        assertThat(isValidExpirationDate(new Date().getMonth() - 1, new Date().getFullYear()), equalTo(false));

    }

    [Test]
    public function expirationOfUpcomingYearWithMonthOfZeroShouldFail() : void {

        assertThat(isValidExpirationDate(0,new Date().getFullYear() + 1), equalTo(true));

    }
}
}
