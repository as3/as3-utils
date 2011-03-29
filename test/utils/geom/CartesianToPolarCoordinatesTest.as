/**
 * Created by IntelliJ IDEA.
 * User: Ian McLean
 * Date: Sep 30, 2010
 * Time: 11:50:50 AM
 */
package utils.geom
{

import org.flexunit.asserts.assertTrue;
import utils.geom.cartesianToPolarCoordinates;

    public class CartesianToPolarCoordinatesTest
    {

		[Before]
		public function setup():void
		{

		}

		[Test]
		public function CartesianToPolarCoordinatesReturnsProperCoords():void
		{

                  var polarCoord:Array = cartesianToPolarCoordinates(3, 4);

                  assertTrue(polarCoord[0] == 5 && polarCoord[1] == 53.13010235415598)

        }

	}
}