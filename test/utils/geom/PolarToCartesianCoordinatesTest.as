/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Sep 30, 2010
 * Time: 11:50:50 AM
 */
package utils.geom
{
import flash.geom.Point;

import org.flexunit.asserts.assertTrue;
import org.hamcrest.assertThat;

import org.hamcrest.object.equalTo;

import utils.geom.cartesianToPolarCoordinates;
import utils.geom.polarToCartesianCoordinates;

public class PolarToCartesianCoordinatesTest
{

    [Test]
    public function PolarToCartesianCoordinatesReturnsProperCoords():void
    {
       //R is 12, theta is 195 degrees
       var cartesianPoint:Point = polarToCartesianCoordinates(12, 195);

       assertThat(cartesianPoint.x, equalTo(-11.59110991546882));
       assertThat(cartesianPoint.y, equalTo(-3.1058285412302444));

    }

}
}